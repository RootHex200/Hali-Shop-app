import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:monarch_mart/model/login_user_input.dart';
import 'package:monarch_mart/view/android_view/android_main_page.dart';
import 'package:monarch_mart/view/android_view/profilepage/login/signup.dart';
import 'package:monarch_mart/view_model/apihandler/auth_handler.dart';

import '../../../../utils/colors.dart';
import '../../../../utils/widgets/spaceer.dart';
import 'loginConmponent/elevated_button_no_bg.dart';

class LoginWithUserID extends StatefulWidget {
  const LoginWithUserID({super.key});

  @override
  State<LoginWithUserID> createState() => _LoginWithUserIDState();
}

class _LoginWithUserIDState extends State<LoginWithUserID> {
  late TextEditingController emailcontroller;
  late TextEditingController passwordcontroller;
  @override
  void initState() {
    emailcontroller = TextEditingController();
    passwordcontroller = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    emailcontroller.dispose();
    passwordcontroller.dispose();
    super.dispose();
  }

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
                TextField(
                  controller: emailcontroller,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide:
                          const BorderSide(color: Appcolors.primaryColor),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                      borderSide:
                          BorderSide(width: 1, color: Appcolors.primaryColor),
                    ),
                    isDense: true,
                    contentPadding: const EdgeInsets.all(8),
                    filled: true,
                    fillColor: Colors.white,
                    hintTextDirection: TextDirection.ltr,
                    hintText: "Enter Your email",
                    hintStyle: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const VerticalSpacer(height: 10),
                //  this is Textfeild  for Passwoerd
                TextField(
                  controller: passwordcontroller,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide:
                          const BorderSide(color: Appcolors.primaryColor),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                      borderSide:
                          BorderSide(width: 1, color: Appcolors.primaryColor),
                    ),
                    isDense: true,
                    contentPadding: const EdgeInsets.all(8),
                    filled: true,
                    fillColor: Colors.white,
                    hintTextDirection: TextDirection.ltr,
                    hintText: "Enter Your password",
                    hintStyle: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const VerticalSpacer(height: 20),
                //  this is login button with primary color
                Consumer(
                  builder: (context, ref, child) => ElevatedButtonAuth(
                    onTap: () {
                      if (emailcontroller.text.isEmpty ||
                          passwordcontroller.text.isEmpty) {
                        Fluttertoast.showToast(msg: "Filed is empty");
                      } else {
                        var data = LoginUserInput(
                            email: emailcontroller.text.toString(),
                            password: passwordcontroller.text.toString());

                        ref.read(authProvider.notifier).userSignin(data);
                        emailcontroller.text = "";
                        passwordcontroller.text = "";
                        Future.delayed(const Duration(seconds: 1), () {
                          print(
                              "${ref.watch(authProvider).success} data is here");
                          if (ref.watch(authProvider).success == true) {
                            Fluttertoast.showToast(msg: "Login successfully");
                            Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const AndroidMainPage()),
                                (route) => false);
                          } else {
                            Fluttertoast.showToast(msg: "User not found");
                          }
                        });
                      }
                    },
                    color: Appcolors.primaryColor,
                    child: const Center(
                        child: Text(
                      "Login",
                      style: TextStyle(color: Appcolors.scaffoldBGColor),
                    )),
                  ),
                ),
                const VerticalSpacer(height: 10),
                ElevatedButtonAuth(
                  onTap: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => const Signup()),
                        (route) => false);
                  },
                  color: Appcolors.primaryColor,
                  child: const Center(
                      child: Text(
                    "Create Account",
                    style: TextStyle(color: Appcolors.scaffoldBGColor),
                  )),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
