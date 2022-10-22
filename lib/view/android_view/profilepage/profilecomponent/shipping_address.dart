import 'package:flutter/material.dart';
import 'package:monarch_mart/utils/colors.dart';
import 'package:monarch_mart/view/android_view/profilepage/login/loginConmponent/elevated_button_no_bg.dart';

class ShippingAddress extends StatelessWidget {
  const ShippingAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back_ios, size: 17),
        ),
        centerTitle: true,
        elevation: 0,
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        toolbarHeight: 28,
        //toolbarTextStyle: const TextStyle(fontSize: 17),
        titleTextStyle: const TextStyle(fontSize: 17),
        title: const Text(
          "Addresses of User",
          style: TextStyle(fontSize: 14),
        ),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            ElevatedButtonAuth(
              color: Appcolors.primaryColor,
              width: double.infinity,
              onTap: () {},
              child: const Center(
                child: Icon(Icons.add),
              ),
            ),
               
          ],
        ),
      )),
    );
  }
}
