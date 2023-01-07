import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:monarch_mart/model/signup_user_input.dart';
import 'package:monarch_mart/utils/string.dart';
import 'package:monarch_mart/utils/widgets/spaceer.dart';
import 'package:monarch_mart/view/android_view/android_main_page.dart';
import 'package:monarch_mart/view/android_view/profilepage/login/loginConmponent/elevated_button_no_bg.dart';
import 'package:monarch_mart/view_model/apihandler/auth_handler.dart';
import '../../../../utils/colors.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  late TextEditingController emialcontroller;
  late TextEditingController passwordcontroller;
  late TextEditingController phonecontroller;
  late TextEditingController namecontroller;
  late TextEditingController confimcontroller;
  @override
  void initState() {
    emialcontroller = TextEditingController();
    passwordcontroller = TextEditingController();
    phonecontroller = TextEditingController();
    namecontroller = TextEditingController();
    confimcontroller = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
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
                    children: [
                      const VerticalSpacer(height: 100),
                      // this is text creat account
                      const Text(
                        AppString.creatAnAccount,
                        style: TextStyle(color: Appcolors.scaffoldBGColor),
                      ),
                      const VerticalSpacer(height: 20),
                      // this is textfield - enter your name

                      TextField(
                        controller: namecontroller,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide:
                                const BorderSide(color: Appcolors.primaryColor),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(4)),
                            borderSide: BorderSide(
                                width: 1, color: Appcolors.primaryColor),
                          ),
                          isDense: true,
                          contentPadding: const EdgeInsets.all(8),
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "Enter your name",
                          hintTextDirection: TextDirection.ltr,
                          hintStyle: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      const VerticalSpacer(height: 10),
                      // this is textfield - enter your phone

                      TextField(
                        controller: phonecontroller,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide:
                                const BorderSide(color: Appcolors.primaryColor),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(4)),
                            borderSide: BorderSide(
                                width: 1, color: Appcolors.primaryColor),
                          ),
                          isDense: true,
                          contentPadding: const EdgeInsets.all(8),
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "Enter your phone",
                          hintTextDirection: TextDirection.ltr,
                          hintStyle: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      const VerticalSpacer(height: 10),
                      // this is textfield - enter your email

                      TextField(
                        controller: emialcontroller,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide:
                                const BorderSide(color: Appcolors.primaryColor),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(4)),
                            borderSide: BorderSide(
                                width: 1, color: Appcolors.primaryColor),
                          ),
                          isDense: true,
                          contentPadding: const EdgeInsets.all(8),
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "Enter your email",
                          hintTextDirection: TextDirection.ltr,
                          hintStyle: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      const VerticalSpacer(height: 10),
                      // this is textfield - enter your password

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
                            borderSide: BorderSide(
                                width: 1, color: Appcolors.primaryColor),
                          ),
                          isDense: true,
                          contentPadding: const EdgeInsets.all(8),
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "Enter your password",
                          hintTextDirection: TextDirection.ltr,
                          hintStyle: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      const VerticalSpacer(height: 10),
                      // this is textfield - enter your confirm password

                      TextField(
                        controller: confimcontroller,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide:
                                const BorderSide(color: Appcolors.primaryColor),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(4)),
                            borderSide: BorderSide(
                                width: 1, color: Appcolors.primaryColor),
                          ),
                          isDense: true,
                          contentPadding: const EdgeInsets.all(8),
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "Enter your confirm password ",
                          hintTextDirection: TextDirection.ltr,
                          hintStyle: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ]),
            ),
            // this is elevated button - creat account button
            Consumer(
              builder: (context, ref, child) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButtonAuth(
                  onTap: () {
                    if (confimcontroller.text.isEmpty ||
                        passwordcontroller.text.isEmpty ||
                        namecontroller.text.isEmpty ||
                        phonecontroller.text.isEmpty ||
                        emialcontroller.text.isEmpty) {
                      Fluttertoast.showToast(msg: "Filed is empty");
                    } else {
                      if (passwordcontroller.text == confimcontroller.text) {
                        var ff =
                            DateTime.now().millisecondsSinceEpoch.toString();
                        var dd = DateTime.now()
                            .toString()
                            .split(" ")[0]
                            .split("-")
                            .join()
                            .toString();

                        var result = ff + dd;
                        var signupUserInput = SignupUserInput(
                            userid: result.toString(),
                            fullname: namecontroller.text.toString(),
                            email: emialcontroller.text.toString(),
                            phone: phonecontroller.text.toString(),
                            password: passwordcontroller.text.toString(),
                            gender: "no need",
                            address: "no need",
                            country: "country",
                            city: "city",
                            pincode: "pincode");
                        ref
                            .read(authProvider.notifier)
                            .userSignup(signupUserInput);

                        namecontroller.text = "";
                        emialcontroller.text = "";
                        passwordcontroller.text = "";
                        phonecontroller.text = "";
                        confimcontroller.text = "";
                        Future.delayed(const Duration(seconds: 1), () {
                          print(
                              "${ref.watch(authProvider).success} data is here");
                          if (ref.watch(authProvider).success == true) {
                            Fluttertoast.showToast(msg: "Sign up successfully");
                            Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const AndroidMainPage()),
                                (route) => false);
                          } else {
                            Fluttertoast.showToast(msg: "User already exist");
                          }
                        });
                      } else {
                        Fluttertoast.showToast(msg: "password not match");
                      }
                    }
                  },
                  color: Appcolors.primaryColor,
                  child: const Center(
                      child: Text(
                    "Creat an Account",
                    style: TextStyle(color: Appcolors.scaffoldBGColor),
                  )),
                ),
              ),
            ),

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
          ],
        ),
      ),
    );
  }
}
