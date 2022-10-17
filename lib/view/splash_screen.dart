import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:monarch_mart/utils/widgets/spaceer.dart';
import 'dart:io' show Platform;
import 'package:monarch_mart/view/ios_view/ios_main_page.dart';

import 'android_view/android_main_page.dart';

class SplashScreen extends HookWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    useEffect(() {
      Future.delayed(const Duration(seconds: 2), () {
        // if (Platform.isAndroid) {
        //   Navigator.of(context).pushReplacement(
        //       MaterialPageRoute(builder: (context) => const AndroidMainPage()));
        // }
        // if(Platform.isIOS){
        //             Navigator.of(context).pushReplacement(
        //       MaterialPageRoute(builder: (context) => const IosMainPage()));
        // }
                  Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => const AndroidMainPage()));
        
      });
      return null;
    }, []);
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(child: Container()),
            const Image(
                height: 100,
                width: 100,
                image: AssetImage("assets/images/monarch_mart_no_bg_logo.png")),
            Expanded(child: Container()),
            Column(
              children: [
                const Text(
                  "Build Version",
                  style: TextStyle(color: Colors.black54),
                ),
                const Text(
                  "v1.1.11",
                  style: TextStyle(color: Colors.black54),
                ),
                const VerticalSpacer(height: 30),
                Container(
                  height: 4,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(4)),
                ),
                const VerticalSpacer(height: 20)
              ],
            )
          ],
        ),
      ),
    );
  }
}
