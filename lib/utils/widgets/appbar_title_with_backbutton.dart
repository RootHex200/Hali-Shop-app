import 'package:flutter/material.dart';

class AppbarTitleWithBackButton extends StatelessWidget {
  final String data;
  const AppbarTitleWithBackButton({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      width: double.maxFinite,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_ios),
            ),
            Expanded(
              child: Align(alignment: Alignment.center, child: Text(data)),
            )
          ]),
    );
  }
}
