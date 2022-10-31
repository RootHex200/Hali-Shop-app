import 'package:flutter/material.dart';
import 'package:monarch_mart/utils/colors.dart';
import 'package:monarch_mart/utils/string.dart';
import 'package:monarch_mart/utils/widgets/spaceer.dart';
import 'package:monarch_mart/view/android_view/profilepage/login/loginConmponent/elevated_button_no_bg.dart';
import 'editprofile_text_field.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //titleTextStyle:const TextStyle(fontSize: 14),
        toolbarHeight: 28,
        elevation: 0.0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        centerTitle: true,
        title: const Text(
          "Edit Profile",
          style: TextStyle(fontSize: 14),
        ),
        leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(
              Icons.arrow_back_ios,
              size: 17,
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //image - user image
              Stack(children: [
                const Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    height: 80,
                    width: 50,
                    child: CircleAvatar(),
                  ),
                ),
                Positioned(
                    top: 10,
                    right: 5,
                    left: 25,
                    bottom: -5,
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.edit,
                          color: Colors.white,
                        )))
              ]),
              const Divider(),
              const VerticalSpacer(height: 25),
              //text basic information
              const Text(
                AppString.basicInformation,
                style: TextStyle(
                    color: Appcolors.primaryColor, fontWeight: FontWeight.bold),
              ),
              const VerticalSpacer(height: 15),
              //text name
              const Text(
                AppString.name,
                style: TextStyle(color: Appcolors.primaryColor),
              ),
              const VerticalSpacer(height: 10),
              // text Edit field - name text field
              const EditProfileTextField(obscureText: false),
              const VerticalSpacer(height: 10),
             const Align(
                alignment: Alignment.topRight,
                child:  Text(AppString.passwordhelper)),
              const VerticalSpacer(height: 10),
              //text password
              const Text(
                AppString.password,
                style: TextStyle(color: Appcolors.primaryColor),
              ),
              const VerticalSpacer(height: 15),
              // text Edit field - name text field
              const EditProfileTextField(obscureText: true),
              const VerticalSpacer(height: 10),
              //text conform password
              const Text(
                AppString.passConform,
                style: TextStyle(color: Appcolors.primaryColor),
              ),
              // text Edit field - name text field
              const EditProfileTextField(obscureText: true),
              const VerticalSpacer(height: 15),
              //elevated button - update profile
              Align(
                alignment: Alignment.bottomRight,
                child: ElevatedButtonAuth(
                  width: 120.0,
                  onTap: () {},
                  color: Appcolors.primaryColor,
                  child: const Center(
                    child: Text(
                      "Update Profile",
                      style: TextStyle(color: Appcolors.scaffoldBGColor),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
