import 'package:flutter/material.dart';
import 'package:monarch_mart/utils/db.dart';
import 'package:monarch_mart/utils/widgets/spaceer.dart';
import 'dart:async';
import 'package:monarch_mart/view/android_view/android_main_page.dart';
import 'package:monarch_mart/view/android_view/profilepage/login/signup.dart';
import 'package:shared_preferences/shared_preferences.dart';

/* ///====> this comment for web test. this code not working on web but working fine at emulator.

 class SplashScreen extends HookWidget {
  const SplashScreen({super.key});
  @override
  Widget build(BuildContext context) {
    const Channel = MethodChannel('com.example.monarch_mart');
    final connection = useState(true);
    Future<void> getmac() async {
      String mac = await Channel.invokeMethod('getMAC');
    }

    Future<void> execute() async {
      final StreamSubscription<InternetConnectionStatus> listener =
          InternetConnectionChecker().onStatusChange.listen(
        (InternetConnectionStatus status) {
          switch (status) {
            case InternetConnectionStatus.connected:
              connection.value = true;
              Future.delayed(const Duration(seconds: 2), () {
                if (Platform.isAndroid) {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => const AndroidMainPage()));
                }
                if(Platform.isIOS){
                            Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => const IosMainPage()));
                }
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => const AndroidMainPage()));
              });
              break;
            case InternetConnectionStatus.disconnected:
              connection.value = false;
              break;
          }
        },
      );

      // close listener after 30 seconds, so the program doesn't run forever
      await Future<void>.delayed(const Duration(minutes: 2));
      await listener.cancel();
    }

    useEffect(() {
      execute();
      return null;
    }, []);
    return connection.value != true
        ? const NoInternetConnection()
        : Scaffold(
            body: SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(child: Container()),
                  GestureDetector(
                    onTap: () {
                      getmac();
                    },
                    child: const Image(
                        height: 100,
                        width: 100,
                        image: AssetImage(
                            "assets/images/monarch_mart_no_bg_logo.png")),
                  ),
                  Expanded(child: Container()),
                  Column(
                    children: [
                      const Text(
                        "Build Version",
                        style: TextStyle(color: Colors.black54),
                      ),
                      const Text(
                        "v1.11.1",
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
}  */

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () async {
      final SharedPreferences db = await prefs;
      var userId = db.getString("uid");
      if (userId != null) {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => const AndroidMainPage()));
      } else {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => const Signup()));
      }
    });

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
            GestureDetector(
              onTap: () {},
              child: const Image(
                  height: 100,
                  width: 100,
                  image:
                      AssetImage("assets/images/monarch_mart_no_bg_logo.png")),
            ),
            Expanded(child: Container()),
            Column(
              children: [
                const Text(
                  "Build Version",
                  style: TextStyle(color: Colors.black54),
                ),
                const Text(
                  "v1.11.1",
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
