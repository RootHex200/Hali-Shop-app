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
                  //GET use mobile number
                  Container(
                    width: MediaQuery.of(context).size.width,

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(style: BorderStyle.solid,color: Colors.black54)
                    ),
                    height: 40,
                    // margin: const EdgeInsets.only(left: 20,right: 20),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                        height: double.maxFinite,
                        width: 80,
                        color: Colors.grey.withOpacity(0.2),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Expanded(child: Container()),
                            const Icon(Icons.flag,size: 30,color: Colors.green,),
                            const Text('+88'),
                            Expanded(child: Container()),
                            Container(
                              color: Colors.black,
                              height: double.maxFinite,
                              width: 1,
                            )
                          ],
                        ),
                          ),
                          const Expanded(child: 
                          TextField(
                          
                            decoration: InputDecoration(
                            
                              border:InputBorder.none
                            ),
                          ))
                      ],
                    ),
                  ),
                  const VerticalSpacer(height: 10),

                  // this is text elevated button login with otP
                   ElevatedButtonAuth(
                    onTap: (() {}),
                    child: const  Center(
                      child: Text(
                        AppString.loginWithOTP,
                        style: TextStyle(color: Appcolors.primaryColor),
                      ),
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
                    child: const Center(child: Text(AppString.loginWithUserID,style: TextStyle(color: Appcolors.primaryColor),)),
                  ),
                  const VerticalSpacer(height: 10),
                  // this is text 
                  const Text(
                    AppString.dontHaveAnAccount,
                    style: TextStyle(color: Appcolors.primaryColor),
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
