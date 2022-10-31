import 'package:flutter/material.dart';
import 'package:monarch_mart/utils/colors.dart';
import 'package:monarch_mart/utils/string.dart';
import 'package:monarch_mart/utils/widgets/spaceer.dart';
import 'package:monarch_mart/view/android_view/profilepage/login/loginConmponent/otp_ui.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:monarch_mart/view/android_view/profilepage/login/loginConmponent/elevated_button_no_bg.dart';

class OTP extends StatelessWidget {
  const OTP({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back,
                  color: Appcolors.primaryColor,
                ),
              ),
            ),
            const VerticalSpacer(height: 25),
            const Text("Confirm OTP",
                style: TextStyle(color: Appcolors.primaryColor)),
            const VerticalSpacer(height: 35),
            const Text(AppString.wesendotpinyourphone),
            const Text(
              "+88 01759546853",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const VerticalSpacer(height: 10),

   
        const OTPUi(),


            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButtonAuth(
                onTap: () {},
                color: Appcolors.primaryColor,
                child: const Center(
                    child: Text(
                  "Confirm",
                  style: TextStyle(color: Appcolors.scaffoldBGColor),
                )),
              ),
            ),
            const VerticalSpacer(height: 25),
            GestureDetector(
              onTap: () {},
              child: Container(
                height: 30,
                width: 150,
                decoration: const BoxDecoration(
                    color: Appcolors.priceCut,
                    borderRadius: BorderRadius.all(Radius.circular(6))),
                child: const Center(
                  child: Text("Resend Code",
                      style: TextStyle(color: Appcolors.primaryColor)),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
