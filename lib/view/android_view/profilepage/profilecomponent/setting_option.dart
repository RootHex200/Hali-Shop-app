import 'package:flutter/material.dart';
import 'package:monarch_mart/utils/colors.dart';
import 'package:monarch_mart/utils/widgets/alart_diolog.dart';
import 'package:monarch_mart/view/android_view/profilepage/profilecomponent/edit_profile.dart';
import 'package:monarch_mart/view/android_view/profilepage/profilecomponent/shipping_address.dart';
import 'oder_history.dart';

class SettingOption extends StatelessWidget {
  const SettingOption({super.key});

  @override
  Widget build(BuildContext context) {
    final setting = [
      {
        "icon": "assets/images/mmicon/one.png",
        "title": "My Account",
        "subtitle": "Make changes to your account"
      },
      {
        "icon": "assets/images/mmicon/one.png",
        "title": "Order History",
        "subtitle": "Take a look at your Orders"
      },
      {
        "icon": "assets/images/mmicon/one.png",
        "title": "Shipping Address",
        "subtitle": "Change or add your address"
      },
      {
        "icon": "assets/images/mmicon/one.png",
        "title": "Delete your Account",
        "subtitle": "Account Delete"
      },
      {
        "icon": "assets/images/mmicon/one.png",
        "title": "Logout",
        "subtitle": "Laogout form your account"
      }
    ];

    return ListView.builder(
        itemCount: setting.length,
        shrinkWrap: true,
        primary: false,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              if (index == 0) {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const EditProfile()));
              } else if (index == 1) {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const OrderHistory()));
              } else if (index == 2) {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ShippingAddress()));
              } else if (index == 3){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MonarchAlartDiolog(
                          title: "Delete Account",
                          content: "Do you really want to Delete Your Account?",
                          lftbtn: "YES",
                          rtbtn: "No",
                        )));
              } else {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MonarchAlartDiolog(
                          title: "Log Out",
                          content: "Do you really want to logout?",
                          lftbtn: "YES",
                          rtbtn: "No",
                        )));
              }
              
            },
            child: ListTile(
              leading: CircleAvatar(
                radius: 25,
                backgroundColor: Appcolors.primaryColor.withOpacity(0.3),
                child: Image.asset(
                  "${setting[index]["icon"]}",
                  color: Appcolors.primaryColor,
                  height: 28,
                  //width: 20,
                ),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.black,
                size: 25,
              ),
              title: Text(
                setting[index]["title"].toString(),
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                setting[index]["subtitle"].toString(),
              ),
            ),
          );
        });
  }
}
