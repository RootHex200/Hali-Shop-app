import 'package:flutter/material.dart';
import 'package:monarch_mart/utils/colors.dart';
import 'package:monarch_mart/utils/string.dart';
import 'package:monarch_mart/utils/widgets/appbar_title_with_backbutton.dart';
import 'package:monarch_mart/utils/widgets/spaceer.dart';
import 'package:monarch_mart/view/android_view/detailspage/detailscomponent/product_summary.dart';
import 'package:monarch_mart/view/android_view/profilepage/login/loginConmponent/checkoutwith_b_n_u.dart';
import 'package:monarch_mart/view/android_view/profilepage/login/loginConmponent/elevated_button_no_bg.dart';
import 'package:monarch_mart/view/android_view/profilepage/login/loginConmponent/text_field.dart';

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
              Expanded(
                flex: 5,
                child: SingleChildScrollView(
                  child: SizedBox(
                    child: Column(
                      children: const [
                        AppbarTitleWithBackButton(data: "Checkout"),
                        VerticalSpacer(height: 10),
                        CheckOutWithBNU(
                          data: "Checkout with Bkash",
                        ),
                        VerticalSpacer(height: 5),
                        CheckOutWithBNU(
                          data: "Checkout with Nagad",
                        ),
                        VerticalSpacer(height: 5),
                        CheckOutWithBNU(
                          data: "Checkout with Upay",
                        ),
                        VerticalSpacer(height: 5),
                        CheckOutWithBNU(
                          data: "Cash on delivery",
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                height: 30,
                decoration: const BoxDecoration(
                  color: Appcolors.primaryColor,
                  borderRadius: BorderRadius.all(Radius.circular(6.0)),
                ),
                child: Row(children: [
                  const Expanded(flex: 3, 
                  child: TextFieldLogin(
                    
                    hint: "Enter Coupon")),
                  Expanded(
                    flex: 1,
                    child: ElevatedButtonAuth(
                        onTap: () {},
                        child: const Center(
                            child: Text(
                          "Apply Coupon",
                          style: TextStyle(color: Colors.white),
                        ))),
                  )
                ]),
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
                            ),
                            TextSpan(
                              text: "    see details",
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  //decorationStyle: TextDecorationStyle.dotted,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            )
                          ]),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          " ৳ 3714.0",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
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
