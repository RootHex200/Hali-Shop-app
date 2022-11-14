import 'package:flutter/material.dart';
import 'package:monarch_mart/utils/colors.dart';

class UpdateAlartDialog extends StatelessWidget {
  final String title;
  final String content;
  final String lftbtn;
  const UpdateAlartDialog({
    super.key,
    required this.title,
    required this.content,
    required this.lftbtn,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        title,
        style: const TextStyle(color: Appcolors.primaryColor),
      ),
      titleTextStyle: const TextStyle(
          fontWeight: FontWeight.bold, color: Colors.black, fontSize: 20),
      content: Text(
        content,
        textAlign: TextAlign.start,
      ),
      actionsOverflowButtonSpacing: 20,
      actionsAlignment: MainAxisAlignment.end,
      elevation: 5,
      actions: [
        SizedBox(
          height: 35,
          width: 100,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Appcolors.primaryColor, // background
              ),
              onPressed: () {},
              child: Text(lftbtn)),
        ),
      ],
    );
    
  }
}
