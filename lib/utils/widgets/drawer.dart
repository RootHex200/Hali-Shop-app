import 'package:flutter/material.dart';
import 'package:monarch_mart/utils/colors.dart';
import 'package:monarch_mart/view/android_view/cardpage/cardcomponent/card_button.dart';

class MonarchDrawer extends StatelessWidget {
  const MonarchDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: const EdgeInsets.all(10.0),
        children: [
          const SizedBox(
            height: 30,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {},
                child: Container(
                  height: 40,
                  width: 205,
                  decoration: BoxDecoration(
                    color: Appcolors.primaryColor,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(15),
                    ),
                    border: Border.all(
                      color: Appcolors.primaryColor,
                      width: 1.0,
                    ),
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: const [
                        Padding(
                          padding: EdgeInsets.all(6.0),
                          child: CircleAvatar(
                            backgroundColor: Appcolors.scaffoldBGColor,
                            child: Icon(
                              Icons.person,
                              color: Appcolors.primaryColor,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Hello Sign in ",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const CardButton(
                iconcolor: Appcolors.primaryColor,
                bodercolor: Appcolors.primaryColor,
                icondata: (Icons.close),
              ),
            ],
          ),
          ListTile(
            dense: true,
            visualDensity: const VisualDensity(vertical: 0),
            leading: const Text("My Account"),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {},
          ),
          ListTile(
            dense: true,
            visualDensity: const VisualDensity(vertical: 0),
            leading: const Text("Privacy Policy"),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {},
          ),
          ListTile(
            dense: true,
            visualDensity: const VisualDensity(vertical: 0),
            leading: const Text("Return Policy"),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {},
          ),
          ListTile(
            dense: true,
            visualDensity: const VisualDensity(vertical: 0),
            leading: const Text("Terms"),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {},
          ),
          ListTile(
            dense: true,
            visualDensity: const VisualDensity(vertical: 0),
            leading: const Text("Logout"),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
