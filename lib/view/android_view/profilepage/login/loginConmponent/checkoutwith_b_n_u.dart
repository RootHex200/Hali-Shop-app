import 'package:flutter/material.dart';
import 'package:monarch_mart/utils/colors.dart';

class CheckOutWithBNU extends StatelessWidget {
  final String data;
  const CheckOutWithBNU({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.maxFinite,
      decoration: BoxDecoration(
        border: Border.all(
          color: Appcolors.primaryColor,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(5),
        ),
      ),
      child: Row(children: [
        SizedBox(
          height: 15,
          width: 45,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Image.asset(
              "assets/images/monarch_mart_logo.png",
              fit: BoxFit.fill,
            ),
          ),
        ),
        Expanded(flex: 5, child: Text(data))
      ]),
    );
  }
}
