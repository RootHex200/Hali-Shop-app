import 'package:flutter/material.dart';
import 'package:monarch_mart/utils/colors.dart';
import 'package:monarch_mart/view/android_view/android_main_page.dart';
import 'package:monarch_mart/view/ios_view/ios_main_page.dart';
import 'dart:io' show Platform;

void main() {
  runApp(const MyApp());
}

//root widget of app
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Appcolors.scaffoldBGColor,
        primaryColor: Appcolors.primaryColor
      ),

      //check which platfrom app start 
      home: Platform.isAndroid?const  AndroidMainPage():const IosMainPage(),
    );
  }
}