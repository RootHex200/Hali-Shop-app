import 'package:flutter/material.dart';
import 'package:monarch_mart/utils/colors.dart';

class SettingOption extends StatelessWidget {
  const SettingOption({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 20,
        shrinkWrap: true,
        primary: false,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              radius: 25,
              backgroundColor: Appcolors.primaryColor.withOpacity(0.3),
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              color: Colors.black,
              size: 25,
            ),
            title: const Text(
              'My Account',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: const Text("Make change to your person"),
          );
        });
  }
}
