import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:monarch_mart/services/ssl_commarce_service.dart';
import 'package:monarch_mart/utils/colors.dart';
import 'package:monarch_mart/utils/string.dart';
import 'package:monarch_mart/utils/widgets/appbar_title_with_backbutton.dart';
import 'package:monarch_mart/utils/widgets/spaceer.dart';
import 'package:monarch_mart/view/android_view/bkashpage/bkash_page.dart';
import 'package:monarch_mart/view/android_view/profilepage/login/loginConmponent/elevated_button_no_bg.dart';
import 'package:monarch_mart/view_model/carthandler/cart_handler_provider.dart';

class Checkout extends StatelessWidget {
  const Checkout({super.key});

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
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> BkashService(amount: price.toString())));
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
                                                "assets/images/monarch_mart_logo.png"))),
                                  ),
                                  Expanded(
                                      flex: 5,
                                      child: Text("Checkout with Bkash"))
                                ]),
                              ),
                            ),
                            const VerticalSpacer(height: 5),
                            GestureDetector(
                              onTap: (){
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
                                        "assets/images/monarch_mart_logo.png",
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                  const Expanded(
                                      flex: 5,
                                      child: Text("Checkout with SSL-Commerze"))
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
