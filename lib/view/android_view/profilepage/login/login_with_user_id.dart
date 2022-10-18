import 'package:flutter/material.dart';
import 'package:monarch_mart/utils/string.dart';

import '../../../../utils/colors.dart';
import '../../../../utils/widgets/spaceer.dart';
import 'loginConmponent/elevated_button_no_bg.dart';
import 'loginConmponent/text_field.dart';

class LoginWithUserID extends StatelessWidget {
  const LoginWithUserID({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(children: [
          // this is for back button
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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // this is image
                const Image(
                    height: 100,
                    width: 100,
                    image: AssetImage(
                        "assets/images/monarch_mart_no_bg_logo.png")),
                // this is Textfeild  for email       
                const TextFieldLogin(
                  height: 40,
                  width: double.infinity,
                  hint: "Enter your Email",
                ),
                const VerticalSpacer(height: 10),
                //  this is Textfeild  for Passwoerd
                const TextFieldLogin(
                  height: 40,
                  width: double.infinity,
                  hint: "Enter your Passwoerd",
                ),
                const VerticalSpacer(height: 20),
                //  this is login button with primary color 
                ElevatedButtonAuth(
                  onTap: () {},
                  color: Appcolors.primaryColor,
                  child: const Text("Login"),
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
