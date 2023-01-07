import 'dart:convert';

import 'dart:developer' as dev;
import 'package:flutter/material.dart';
import 'package:flutter_bkash/flutter_bkash.dart';
import 'package:fluttertoast/fluttertoast.dart';

enum Intent { sale, authorization }

class BkashService extends StatefulWidget {
  final String amount;
  const BkashService({Key? key,required this.amount}) : super(key: key);

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<BkashService> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final TextEditingController _amountController = TextEditingController();

  final Intent _intent = Intent.sale;
  FocusNode? focusNode;

  @override
  void initState() {
    super.initState();

    focusNode = FocusNode();
  }

  @override
  void dispose() {
    // Clean up the focus node when the Form is disposed.
    focusNode!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(title: const Text("Bkash pyment")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(80, 40, 80, 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Amount :',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Container(
              margin: const EdgeInsets.only(top: 8),
              child: TextFormField(
                focusNode: focusNode,
                controller: _amountController,
                decoration: const InputDecoration(
                  hintText: "1240",
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      borderSide: BorderSide(color: Colors.grey)),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.pink, width: 2.0),
                  ),
                  // hintText: reviewTitle,
                ),
                keyboardType: TextInputType.number,
                maxLines: 1,
                minLines: 1,
              ),
            ),
            const SizedBox(height: 40.0),
            const Divider(),
            // ListTile(
            //   title: const Text('Immediate'),
            //   leading: Radio(
            //     value: Intent.sale,
            //     groupValue: _intent,
            //     onChanged: (value) {
            //       setState(() => _intent = value!);
            //     },
            //   ),
            //   dense: true,
            // ),
            // ListTile(
            //   title: const Text('Auth and Capture'),
            //   leading: Radio(
            //     value: Intent.authorization,
            //     groupValue: _intent,
            //     onChanged: (value) {
            //       setState(() => _intent = value!);
            //     },
            //   ),
            //   dense: true,
            // ),
            const Divider(),
            Center(
              child: TextButton(
                style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(3.0),
                    ),
                    backgroundColor: Colors.pink),
                child: const Text(
                  "Checkout",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  String amount = _amountController.text.trim();
                  //String intent =
                  _intent == Intent.sale ? "sale" : "authorization";

                  if (amount.isEmpty) {
                    // if the amount is empty then show the snack-bar
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text(
                            "Amount is empty. Without amount you can't pay. Try again")));
                    return;
                  }
                  // remove focus from TextField to hide keyboard
                  focusNode!.unfocus();

                  //Goto BkashPayment page & pass the params
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => BkashPayment(
                            /// depend isSandbox (true/false)
                            isSandbox: true,

                            /// amount of your bkash payment
                            amount: amount,

                            /// intent would be (sale / authorization)
                            intent: "sale",
                            // accessToken: '', /// if the user have own access token for verify payment
                            currency: 'BDT',

                            /// bkash url for create payment, when you implement on you project then it be change as your production create url, [when you send it on sandbox mode, send it as empty string '' or anything]
                            createBKashUrl:
                                'https://merchantserver.sandbox.bka.sh/api/checkout/v1.2.0-beta/payment/create',

                            /// bkash url for execute payment, , when you implement on you project then it be change as your production create url, [when you send it on sandbox mode, send it as empty string '' or anything]
                            executeBKashUrl:
                                'https://merchantserver.sandbox.bka.sh/api/checkout/v1.2.0-beta/payment/execute',

                            /// for script url, when you implement on production the set it live script js (https://scripts.pay.bka.sh/versions/1.2.0-beta/checkout/bKash-checkout-pay.js)
                            scriptUrl:
                                'https://scripts.sandbox.bka.sh/versions/1.2.0-beta/checkout/bKash-checkout-sandbox.js',

                            /// the return value from the package
                            /// status => 'paymentSuccess', 'paymentFailed', 'paymentError', 'paymentClose'
                            /// data => return value of response
                            paymentStatus: (status, data) {
                              dev.log('return status => $status');
                              dev.log('return data => $data');

                              /// when payment success
                              if (status == 'paymentSuccess') {
                                if (data['transactionStatus'] == 'Completed') {
                                  Fluttertoast.showToast(
                                      msg: 'Payment Success');
                                }
                              }

                              /// when payment failed
                              else if (status == 'paymentFailed') {
                                if (data.isEmpty) {
                                  Fluttertoast.showToast(msg: 'Payment Failed');
                                } else if (data[0]['errorMessage'].toString() !=
                                    'null') {
                                  Fluttertoast.showToast(
                                      msg:
                                          "Payment Failed ${data[0]['errorMessage']}");
                                } else {
                                  Fluttertoast.showToast(msg: "Payment Failed");
                                }
                              }

                              // when payment on error
                              else if (status == 'paymentError') {
                                Fluttertoast.showToast(
                                    msg: jsonDecode(
                                        data['responseText'])['error']);
                              }

                              // when payment close on demand closed the windows
                              else if (status == 'paymentClose') {
                                if (data == 'closedWindow') {
                                  Fluttertoast.showToast(
                                      msg: 'Failed to payment, closed screen');
                                } else if (data == 'scriptLoadedFailed') {
                                  Fluttertoast.showToast(
                                      msg: 'Payment screen loading failed');
                                }
                              }
                              // back to screen to pop()
                              Navigator.of(context).pop();
                            },
                          ))
                          
                          );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
