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
        body: Column(
          children: [
            const Text(
              AppString.login,
              style: TextStyle(color: Appcolors.primaryColor),
            ),
            const VerticalSpacer(height: 10),
            const Text(
              AppString.enterYourMobileNumber,
              style: TextStyle(color: Appcolors.backButtontBlack),
            ),
            const VerticalSpacer(height: 10),
            ElevatedButtonNoBG(
              onTap: (() {}),
              child: const Text(
                AppString.loginWithOTP,
                style: TextStyle(color: Colors.pink),
              ),
            ),
            const VerticalSpacer(height: 10),
            const Text(
              AppString.or,
              style: TextStyle(color: Appcolors.backButtontBlack),
            ),
            const VerticalSpacer(height: 10),
            ElevatedButtonNoBG(
              onTap: (() {}),
              child: const Text(AppString.loginWithUserID),
            ),
            const VerticalSpacer(height: 10),
            const Text(
              AppString.dontHaveAnAccount,
              style: TextStyle(color: Appcolors.backButtontBlack),
            ),
            const VerticalSpacer(height: 10),
            const Text(
              AppString.creatAnAccount,
              style: TextStyle(color: Appcolors.backButtontBlack),
            ),
          ],
        ),
      ),
    );
  }
}
