import 'dart:io';

import 'package:flutter/material.dart';
import 'package:monarch_mart/utils/colors.dart';
import 'package:monarch_mart/utils/db.dart';
import 'package:monarch_mart/view/android_view/profilepage/login/signup.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MonarchAlartDiolog extends StatelessWidget {
  final String title;
  final String content;
  final String lftbtn;
  final String rtbtn;

  const MonarchAlartDiolog(
      {super.key,
      required this.title,
      required this.content,
      required this.lftbtn,
      required this.rtbtn});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Center(
          child: Text(
        title,
        style: const TextStyle(color: Appcolors.primaryColor),
      )),
      titleTextStyle: const TextStyle(
          fontWeight: FontWeight.bold, color: Colors.black, fontSize: 20),
      content: Text(
        content,
        textAlign: TextAlign.center,
      ),
      actionsOverflowButtonSpacing: 20,
      actionsAlignment: MainAxisAlignment.center,
      actions: [
        SizedBox(
          height: 35,
          width: 70,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Appcolors.primaryColor, // background
              ),
              onPressed: () async {
                final SharedPreferences db = await prefs;
                if (db.getString("uid")!.isNotEmpty) {
                  db.clear();
                }
                print(db.getString('uid'));
                // ignore: use_build_context_synchronously
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => const Signup()),
                    (route) => false);
              },
              child: Text(lftbtn)),
        ),
        SizedBox(
          height: 35,
          width: 70,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  side: const BorderSide(
                      width: .0, color: Appcolors.primaryColor),
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.blue // background
                  ),
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(rtbtn)),
        ),
      ],
    );
  }
}
