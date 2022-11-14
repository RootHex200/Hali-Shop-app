import 'package:flutter/material.dart';
import 'package:monarch_mart/utils/colors.dart';
import 'package:monarch_mart/view/android_view/profilepage/profilecomponent/webview.dart';

class ProfileMoreSettings extends StatelessWidget {
  const ProfileMoreSettings({super.key});

  @override
  Widget build(BuildContext context) {
    final moreSttingsURL = [
      {
        "icon": "assets/images/mmicon/one.png",
        "name": "Privacy Policy",
        "url": "https://monarchmart.com/privacypolicy"
      },
      {
        "icon": "assets/images/mmicon/one.png",
        "name": "Return Policy",
        "url": "https://monarchmart.com/returnpolicy"
      },
      {
        "icon": "assets/images/mmicon/one.png",
        "name": "Terms",
        "url": "https://monarchmart.com/terms"
      },
    ];
    return ListView.builder(
      itemCount: moreSttingsURL.length,
      shrinkWrap: true,
      primary: false,
      itemBuilder: ((context, index) {
        return GestureDetector(
          onTap: () {
            if (index == 0) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Webview(
                            url: moreSttingsURL[index]["url"].toString(),
                            titile: moreSttingsURL[index]["name"].toString(),
                          )));
            } else if (index == 1) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Webview(
                            url: moreSttingsURL[index]["url"].toString(),
                            titile: moreSttingsURL[index]["name"].toString(),
                          )));
            } else if (index == 2) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Webview(
                            url: moreSttingsURL[index]["url"].toString(),
                            titile: moreSttingsURL[index]["name"].toString(),
                          )));
            }
          },
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: ListTile(
              leading: CircleAvatar(
                radius: 25,
                backgroundColor: Appcolors.primaryColor.withOpacity(0.3),
                child: Image.asset(
                  "${moreSttingsURL[index]["icon"]}",
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
                moreSttingsURL[index]["name"].toString(),
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
        );
      }),
    );
  }
}
