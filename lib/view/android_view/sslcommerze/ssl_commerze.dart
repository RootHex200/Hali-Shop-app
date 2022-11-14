// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_sslcommerz/model/SSLCAdditionalInitializer.dart';
import 'package:flutter_sslcommerz/model/SSLCCustomerInfoInitializer.dart';
import 'package:flutter_sslcommerz/model/SSLCEMITransactionInitializer.dart';
import 'package:flutter_sslcommerz/model/SSLCSdkType.dart';
import 'package:flutter_sslcommerz/model/SSLCShipmentInfoInitializer.dart';
import 'package:flutter_sslcommerz/model/SSLCTransactionInfoModel.dart';
import 'package:flutter_sslcommerz/model/SSLCommerzInitialization.dart';
import 'package:flutter_sslcommerz/model/SSLCurrencyType.dart';
import 'package:flutter_sslcommerz/model/sslproductinitilizer/General.dart';
import 'package:flutter_sslcommerz/model/sslproductinitilizer/SSLCProductInitializer.dart';
import 'package:flutter_sslcommerz/sslcommerz.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:monarch_mart/services/ssl_commarce_service.dart';

enum SdkType { TESTBOX, LIVE }

class SslCommerz extends StatefulWidget {
  const SslCommerz({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<SslCommerz> {
  final _key = GlobalKey<FormState>();
  dynamic formData = {};
  SdkType _radioSelected = SdkType.TESTBOX;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('SSLCommerz'),
        ),
        body: Form(
          key: _key,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      initialValue: "demotest",
                      keyboardType: TextInputType.text,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(8.0),
                          ),
                        ),
                        hintText: "Store ID",
                      ),
                      validator: (value) {
                        if (value != null) {
                          return "Please input store id";
                        } else {
                          return null;
                        }
                      },
                      onSaved: (value) {
                        formData['store_id'] = value;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      initialValue: "qwerty",
                      keyboardType: TextInputType.text,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(8.0),
                          ),
                        ),
                        hintText: "Store password",
                      ),
                      validator: (value) {
                        if (value != null) {
                          return "Please input store password";
                        } else {
                          return null;
                        }
                      },
                      onSaved: (value) {
                        formData['store_password'] = value;
                      },
                    ),
                  ),
                  Row(
                    children: [
                      Radio(
                        value: SdkType.TESTBOX,
                        groupValue: _radioSelected,
                        activeColor: Colors.blue,
                        onChanged: (value) {
                          setState(() {
                            _radioSelected = value as SdkType;
                          });
                        },
                      ),
                      const Text("TEXTBOX"),
                      Radio(
                        value: SdkType.LIVE,
                        groupValue: _radioSelected,
                        activeColor: Colors.blue,
                        onChanged: (value) {
                          setState(() {
                            _radioSelected = value as SdkType;
                          });
                        },
                      ),
                      const Text('LIVE'),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      keyboardType: TextInputType.phone,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(8.0))),
                        hintText: "Phone number",
                      ),
                      onSaved: (value) {
                        formData['phone'] = value;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      initialValue: "10",
                      // keyboardType: TextInputType.number,
                      keyboardType:
                          const TextInputType.numberWithOptions(decimal: true),
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(8.0))),
                        hintText: "Payment amount",
                      ),
                      validator: (value) {
                        if (value != null) {
                          return "Please input amount";
                        } else {
                          return null;
                        }
                      },
                      onSaved: (value) {
                        formData['amount'] = double.parse(value!);
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(8.0))),
                        hintText: "Enter multi card",
                      ),
                      onSaved: (value) {
                        formData['multicard'] = value;
                      },
                    ),
                  ),
                  ElevatedButton(
                    child: const Text("Pay now"),
                    onPressed: () {
                      if (_key.currentState != null) {
                        _key.currentState?.save();
                        print(_radioSelected);
                        SSL_commerze().sslCommerzGeneralCall();
                        //sslCommerzCustomizedCall();
                      }
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
