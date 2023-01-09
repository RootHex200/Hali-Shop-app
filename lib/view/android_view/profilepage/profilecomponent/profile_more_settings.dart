import 'package:flutter/material.dart';
import 'package:monarch_mart/utils/colors.dart';

class ProfileMoreSettings extends StatelessWidget {
  const ProfileMoreSettings({super.key});

  @override
  Widget build(BuildContext context) {
    final moreSttingsURL = [
      {
        "icon": "assets/images/privacy.png",
        "name": "Privacy Policy",
      },
      {
        "icon": "assets/images/mmicon/one.png",
        "name": "Return Policy",
      },
      {
        "icon": "assets/images/terms.png",
        "name": "Terms",
      },
    ];
    return ListView.builder(
      itemCount: moreSttingsURL.length,
      shrinkWrap: true,
      primary: false,
      itemBuilder: ((context, index) {
        return GestureDetector(
          onTap: () {
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
