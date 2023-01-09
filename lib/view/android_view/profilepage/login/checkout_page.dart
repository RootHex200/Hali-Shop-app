import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bkash/flutter_bkash.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:monarch_mart/services/ssl_commarce_service.dart';
import 'package:monarch_mart/utils/colors.dart';
import 'package:monarch_mart/utils/string.dart';
import 'package:monarch_mart/utils/widgets/appbar_title_with_backbutton.dart';
import 'package:monarch_mart/utils/widgets/spaceer.dart';
import 'package:monarch_mart/view_model/carthandler/cart_handler_provider.dart';

enum Intent { sale, authorization }
class Checkout extends StatefulWidget {
  const Checkout({super.key});

  @override
  State<Checkout> createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();


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
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Consumer(
                builder: (context, ref, child) {
                  final price = ref.watch(totalAmoutn);
                  return Expanded(
                    flex: 5,
                    child: SingleChildScrollView(
                      child: SizedBox(
                        child: Column(
                          children: [
                            const AppbarTitleWithBackButton(data: "Checkout"),
                            const VerticalSpacer(height: 10),
                            GestureDetector(
                              onTap: () {
                                String amount = price.toString();
                                //String intent =
                                _intent == Intent.sale
                                    ? "sale"
                                    : "authorization";

                                if (amount.isEmpty) {
                                  // if the amount is empty then show the snack-bar
                                  ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
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
                                            // dev.log('return status => $status');
                                            // dev.log('return data => $data');

                                            /// when payment success
                                            if (status == 'paymentSuccess') {
                                              if (data['transactionStatus'] ==
                                                  'Completed') {
                                                Fluttertoast.showToast(
                                                    msg: 'Payment Success');
                                              }
                                            }

                                            /// when payment failed
                                            else if (status ==
                                                'paymentFailed') {
                                              if (data.isEmpty) {
                                                Fluttertoast.showToast(
                                                    msg: 'Payment Failed');
                                              } else if (data[0]['errorMessage']
                                                      .toString() !=
                                                  'null') {
                                                Fluttertoast.showToast(
                                                    msg:
                                                        "Payment Failed ${data[0]['errorMessage']}");
                                              } else {
                                                Fluttertoast.showToast(
                                                    msg: "Payment Failed");
                                              }
                                            }

                                            // when payment on error
                                            else if (status == 'paymentError') {
                                              Fluttertoast.showToast(
                                                  msg: jsonDecode(
                                                          data['responseText'])[
                                                      'error']);
                                            }

                                            // when payment close on demand closed the windows
                                            else if (status == 'paymentClose') {
                                              if (data == 'closedWindow') {
                                                Fluttertoast.showToast(
                                                    msg:
                                                        'Failed to payment, closed screen');
                                              } else if (data ==
                                                  'scriptLoadedFailed') {
                                                Fluttertoast.showToast(
                                                    msg:
                                                        'Payment screen loading failed');
                                              }
                                            }
                                            // back to screen to pop()
                                            Navigator.of(context).pop();
                                          },
                                        )));
                              },
                              child: Container(
                                height: 50,
                                width: double.maxFinite,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Appcolors.primaryColor,
                                  ),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(5),
                                  ),
                                ),
                                child: Row(children: const [
                                  SizedBox(
                                    height: 50,
                                    width: 45,
                                    child: Padding(
                                        padding:
                                            EdgeInsets.symmetric(horizontal: 5),
                                        child: Image(
                                            fit: BoxFit.contain,
                                            image: AssetImage(
                                                "assets/images/bkash.png"))),
                                  ),
                                  Expanded(
                                      flex: 5,
                                      child: Text("Checkout with Bkash"))
                                ]),
                              ),
                            ),
                            const VerticalSpacer(height: 5),
                            GestureDetector(
                              onTap: () {
                                SSL_commerze().sslCommerzGeneralCall(price);
                              },
                              child: Container(
                                height: 50,
                                width: double.maxFinite,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Appcolors.primaryColor,
                                  ),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(5),
                                  ),
                                ),
                                child: Row(children: [
                                  SizedBox(
                                    height: 50,
                                    width: 45,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 5),
                                      child: Image.asset(
                                        "assets/images/nogod.png",
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                  const Expanded(
                                      flex: 5,
                                      child: Text("Checkout with SSLCOMMERZ"))
                                ]),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
              const VerticalSpacer(height: 5),
              Container(
                height: 30,
                decoration: const BoxDecoration(
                  color: Appcolors.primaryColor,
                  borderRadius: BorderRadius.all(Radius.circular(6.0)),
                ),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: RichText(
                          text: const TextSpan(children: [
                            TextSpan(
                              text: AppString.totalAmount,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            )
                          ]),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Consumer(
                          builder: (context, ref, child) {
                            final price = ref.watch(totalAmoutn);

                            return Text(
                              " ৳ $price.0",
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            );
                          },
                        ),
                      ),
                    ]),
              ),
              const VerticalSpacer(height: 5),
              Container(
                height: 50,
                decoration: const BoxDecoration(color: Appcolors.primaryColor),
                child: const Center(
                    child: Text(
                  AppString.confirmorder,
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
