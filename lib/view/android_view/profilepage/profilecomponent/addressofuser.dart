import 'package:flutter/material.dart';
import 'package:monarch_mart/utils/colors.dart';

class AddressofUser extends StatelessWidget {
  final String title;
  final String content;
  final String lftbtn;
  final String rtbtn;

  const AddressofUser(
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
              onPressed: () {},
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
              onPressed: () {},
              child: Text(rtbtn)),
        ),
      ],
    );
  }
}
