import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:monarch_mart/utils/colors.dart';
//import 'package:monarch_mart/view/android_view/homepage/home_page.dart';



import 'package:monarch_mart/view/splash_screen.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

//root widget of app
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      builder: (BuildContext context, Widget? child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            scaffoldBackgroundColor: Appcolors.scaffoldBGColor,
            primaryColor: Appcolors.primaryColor,
            fontFamily: "Roboto",
          ),

          // home: Platform.isAndroid?const  AndroidMainPage():const IosMainPage(),
          home: child,
        );
      },
      child: const SplashScreen()
    );
  }
}
