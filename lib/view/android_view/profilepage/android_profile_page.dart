import 'package:flutter/material.dart';
import 'package:monarch_mart/utils/colors.dart';
import 'package:monarch_mart/utils/string.dart';
import 'package:monarch_mart/utils/widgets/drawer.dart';
import 'package:monarch_mart/utils/widgets/spaceer.dart';
import 'package:monarch_mart/view/android_view/profilepage/profilecomponent/profile_more_settings.dart';
import 'package:monarch_mart/view/android_view/profilepage/profilecomponent/profile_view.dart';
import 'package:monarch_mart/view/android_view/profilepage/profilecomponent/setting_option.dart';

class AndroidProfilePage extends StatelessWidget {
  const AndroidProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MonarchDrawer(),
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
          children: const [
            ProfileView(),
            VerticalSpacer(height: 10),

            //Setting option
            SettingOption(),

            //more settings text

            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                AppString.moreSettings,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),

            //more settings listtile
            ProfileMoreSettings(),
          ],
        ),
      ),
    );
  }
}
