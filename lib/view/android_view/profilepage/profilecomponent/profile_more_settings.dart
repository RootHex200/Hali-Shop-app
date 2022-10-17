import 'package:flutter/material.dart';
import 'package:monarch_mart/utils/colors.dart';
import 'package:monarch_mart/view/android_view/profilepage/profilecomponent/webview.dart';

class ProfileMoreSettings extends StatelessWidget {
  const ProfileMoreSettings({super.key});

  @override
  Widget build(BuildContext context) {
    // final moreSttings = ["Privacy Policy", "Return Policy", "Terms"];
    final moreSttingsURL = [
      {
        "name": "Privacy Policy",
        "url": "https://monarchmart.com/privacypolicy"
      },
      {"name": "Return Policy", "url": "https://monarchmart.com/returnpolicy"},
      {"name": "Terms", "url": "https://monarchmart.com/terms"},
    ];
    return ListView.builder(
      itemCount: moreSttingsURL.length,
      shrinkWrap: true,
      primary: false,
      itemBuilder: ((context, index) {
        return InkWell(
          onTap: () {
            print("Clicked ${moreSttingsURL[index]["url"]}");
            Navigator.push(
                context, MaterialPageRoute(builder: ((context) => 
                Webview(url:moreSttingsURL[index]["url"].toString(), 
                titile: moreSttingsURL[index]["name"].toString(),))));
          },
          child: ListTile(
            leading: CircleAvatar(
              radius: 25,
              backgroundColor: Appcolors.primaryColor.withOpacity(0.3),
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
        );
      }),
    );
  }
}







 