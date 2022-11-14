import 'package:flutter/material.dart';
import 'package:monarch_mart/services/location_page.dart';
import 'package:monarch_mart/services/ssl_commarce_service.dart';
import 'package:monarch_mart/utils/colors.dart';
import 'package:monarch_mart/utils/string.dart';
import 'package:monarch_mart/utils/widgets/drawer.dart';
import 'package:monarch_mart/utils/widgets/spaceer.dart';
import 'package:monarch_mart/utils/widgets/update_alart_dialog.dart';
import 'package:monarch_mart/view/android_view/bkashpage/bkash_page.dart';
import 'package:monarch_mart/view/android_view/profilepage/login/checkout_page.dart';
import 'package:monarch_mart/view/android_view/profilepage/login/login.dart';
import 'package:monarch_mart/view/android_view/profilepage/login/login_with_user_id.dart';
import 'package:monarch_mart/view/android_view/profilepage/login/opt_page.dart';
import 'package:monarch_mart/view/android_view/profilepage/login/signup.dart';
import 'package:monarch_mart/view/android_view/profilepage/profilecomponent/profile_more_settings.dart';
import 'package:monarch_mart/view/android_view/profilepage/profilecomponent/profile_view.dart';
import 'package:monarch_mart/view/android_view/profilepage/profilecomponent/setting_option.dart';
import 'package:monarch_mart/view/android_view/sslcommerze/ssl_commerze.dart';

class AndroidProfilePage extends StatelessWidget {
  const AndroidProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MonarchDrawer(),
      appBar: AppBar(
        leading: const Padding(
            padding: EdgeInsets.only(left: 10),
            child: Icon(
              Icons.menu,
              color: Colors.black,
            )),
        elevation: 0.0,
        actions: const [
          Padding(
              padding: EdgeInsets.only(right: 20),
              child: Icon(
                Icons.search,
                color: Colors.black,
              ))
        ],
        centerTitle: false,
        backgroundColor: Colors.white,
        title: const Text(
          "Profile",
          style: TextStyle(
              color: Appcolors.primaryColor, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //main prfile view
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Login()));
                },
                child: const Text("login")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginWithUserID()));
                },
                child: const Text("login with user id")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Signup()));
                },
                child: const Text("sign up")),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const BkashService()));
              },
              child: const Text("bkash"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LocationPage()));
              },
              child: const Text("location"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SslCommerz()));
              },
              child: const Text("SSL commerce"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const OTP()));
              },
              child: const Text("OTP"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Checkout()));
              },
              child: const Text("Checkout"),
            ),
            Builder(
              builder: (context)=> ElevatedButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer()
                  
                  ;
                },
                child: const Text("drawer"),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const UpdateAlartDialog(
                              title: "UPDATE NEEDED!",
                              content: "Please update your Monarch Mart App",
                              lftbtn: "UPDATE",
                            )));
              },
              child: const Text("Update check alart diolog"),
            ),
            const ProfileView(),
            const VerticalSpacer(height: 10),

            //Setting option
            const SettingOption(),

            //more settings text

            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                AppString.moreSettings,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),

            //more settings listtile
            const ProfileMoreSettings(),
          ],
        ),
      ),
    );
  }
}
