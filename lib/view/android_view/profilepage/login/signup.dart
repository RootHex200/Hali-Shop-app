import 'package:flutter/material.dart';
import 'package:monarch_mart/utils/string.dart';
import 'package:monarch_mart/utils/widgets/spaceer.dart';
import 'package:monarch_mart/view/android_view/profilepage/login/loginConmponent/elevated_button_no_bg.dart';
import '../../../../utils/colors.dart';
import 'loginConmponent/text_field.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: Container(
              width: double.maxFinite,
              decoration: BoxDecoration(
                  color: Appcolors.primaryColor,
                  borderRadius: BorderRadius.circular(15)),
              child: Stack(alignment: AlignmentDirectional.center, children: [
                // this is image

                const Positioned( 
                  top: 20,
                  left: 1,
                  right: 1,
                  child: Image(
                      height: 100,
                      width: 100,
                      image: AssetImage(
                          "assets/images/monarch_mart_no_bg_logo.png")),
                ),

                // this is backbutton
                Positioned(
                  top: 20,
                  left: 10,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Appcolors.scaffoldBGColor,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      VerticalSpacer(height: 100),
                      // this is text creat account
                      Text(
                        AppString.creatAnAccount,
                        style: TextStyle(color: Appcolors.scaffoldBGColor),
                      ),
                      VerticalSpacer(height: 20),
                      // this is textfield - enter your name
                      TextFieldLogin(
                        hint: AppString.enteryourname,
                      ),
                      VerticalSpacer(height: 10),
                      // this is textfield - enter your phone
                      TextFieldLogin(
                        hint: AppString.enteryourphone,
                      ),
                      VerticalSpacer(height: 10),
                      // this is textfield - enter your email
                      TextFieldLogin(hint: AppString.enteryouremail),
                      VerticalSpacer(height: 10),
                      // this is textfield - enter your password
                      TextFieldLogin(
                        hint: AppString.enteryourepassword,
                      ),
                      VerticalSpacer(height: 10),
                      // this is textfield - enter your confirm password
                      TextFieldLogin(
                        hint: AppString.enteryourcomfirmpassword,
                      ),
                    ],
                  ),
                )
              ]),
            ),
          ),
          // this is elevated button - creat account button
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButtonAuth(
              onTap: () {},
              color: Appcolors.primaryColor,
              child: const Center(
                  child: Text(
                "Creat an Account",
                style: TextStyle(color: Appcolors.scaffoldBGColor),
              )),
            ),
          ),
          const VerticalSpacer(height: 10),
          // this is elevated button - Already registered button
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButtonAuth(
              onTap: () {},
              color: Appcolors.primaryColor,
              child: const Center(
                  child: Text(
                "Already registered",
                style: TextStyle(color: Appcolors.scaffoldBGColor),
              )),
            ),
          ),
          const VerticalSpacer(height: 10),
        ],
      ),
    );
  }
}
