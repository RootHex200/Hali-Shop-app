import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:image_picker/image_picker.dart';
import 'package:monarch_mart/utils/colors.dart';
import 'package:monarch_mart/utils/string.dart';
import 'package:monarch_mart/utils/widgets/spaceer.dart';
import 'package:monarch_mart/view/android_view/android_main_page.dart';
import 'package:monarch_mart/view/android_view/profilepage/login/loginConmponent/elevated_button_no_bg.dart';
import 'editprofile_text_field.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  File? originalImage;
  File? compressedImag;
  String compressedImagePath = "/storage/emulated/0/Download/";
  bool isMale = true;

  //image pick from gallery ====>
  Future pickImage() async {
    final pickedFile =
        await ImagePicker.platform.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        originalImage = File(pickedFile.path);
      });
    }

    if (originalImage == null) return null;
    final compressedFile = await FlutterImageCompress.compressAndGetFile(
        originalImage!.path, "$compressedImagePath/file1.jpg");
    if (compressedFile != null) {
      setState(() {
        compressedImag = compressedFile;
      });
      print(await originalImage!.length());
      print(await compressedFile.length());
    }
  }

//picked image from gallery, compressed image ====>
  Future compressImage() async {
    if (originalImage == null) return null;
    final compressedFile = await FlutterImageCompress.compressAndGetFile(
        originalImage!.path, "$compressedImagePath/file1.jpg",
        quality: 10);
    if (compressedFile != null) {
      setState(() {
        compressedImag = compressedFile;
      });
      print(await originalImage!.length());
      print(await compressedFile.length());
    }
  }

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

              Align(
                alignment: Alignment.center,
                child: Container(
                  height: 150,
                  width: 200,
                  color: Colors.red,
                  
                ),
              ),
              //image - user image
              //              // Stack(
              // children: [
              //   Align(
              //     alignment: Alignment.center,
              //     child: originalImage != null
              //         ? CircleAvatar(
              //             radius: 52,
              //             backgroundColor: isMale ? Colors.blue : Colors.pink,
              //             child: CircleAvatar(
              //               radius: 50,
              //               foregroundImage: FileImage(originalImage!),
              //             ),
              //           )
              //         : Align(
              //           alignment: Alignment.bottomRight,
              //           child: CircleAvatar(
              //             backgroundColor: Colors.yellowAccent,
              //             radius: 50,
              //             child: IconButton(
              //                 onPressed: pickImage,
              //                 icon: const Icon(
              //                   Icons.edit,
              //                   color: Colors.white,
              //                 )),
              //           ),
              //         ),
              //   ),
              // ]),
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
                  child: Text(AppString.passwordhelper)),
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
