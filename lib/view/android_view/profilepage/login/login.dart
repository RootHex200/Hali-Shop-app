import 'package:flutter/material.dart';
import 'package:monarch_mart/utils/colors.dart';
import 'package:monarch_mart/utils/string.dart';
import 'package:monarch_mart/utils/widgets/spaceer.dart';

import 'loginConmponent/elevated_button_no_bg.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(children: [
            // this is back button
            Positioned(
              top: 10,
              left: 10,
              child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Appcolors.primaryColor,
                  )),
            ),
            const VerticalSpacer(height: 30),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // this is image 
                  const Image(
                      height: 100,
                      width: 100,
                      image: AssetImage(
                          "assets/images/monarch_mart_no_bg_logo.png")),
                  const VerticalSpacer(height: 10),
                  // this is text 
                  const Text(
                    AppString.login,
                    style: TextStyle(color: Appcolors.primaryColor),
                  ),
                  const VerticalSpacer(height: 10),
                  // this is text 
                  const Text(
                    AppString.enterYourMobileNumber,
                    style: TextStyle(color: Appcolors.backButtontBlack),
                  ),
                  const VerticalSpacer(height: 10),
                  // this is text elevated button login with otp
                  ElevatedButtonAuth(
                    onTap: (() {}),
                    child: const Text(
                      AppString.loginWithOTP,
                      style: TextStyle(color: Colors.pink),
                    ),
                  ),
                  // this is text
                  const Text(
                    AppString.or,
                    style: TextStyle(color: Appcolors.backButtontBlack),
                  ),
                  const VerticalSpacer(height: 10),
                  //this is text elevated button login with user id
                  ElevatedButtonAuth(
                    onTap: (() {}),
                    child: const Text(AppString.loginWithUserID),
                  ),
                  const VerticalSpacer(height: 10),
                  // this is text 
                  const Text(
                    AppString.dontHaveAnAccount,
                    style: TextStyle(color: Appcolors.backButtontBlack),
                  ),
                  const VerticalSpacer(height: 10),
                  // this is text 
                  const Text(
                    AppString.creatAnAccount,
                    style: TextStyle(color: Appcolors.primaryColor),
                  ),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
