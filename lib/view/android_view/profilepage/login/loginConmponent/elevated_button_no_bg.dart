import 'package:flutter/material.dart';
import 'package:monarch_mart/utils/colors.dart';

class ElevatedButtonAuth extends StatelessWidget {
  final VoidCallback onTap;
  final Widget child;
  final Color? color;
  final double? width;
  
  const ElevatedButtonAuth(
      {super.key,
      required this.onTap,
      required this.child,
      this.color,
      this.width});

  @override
  Widget build(BuildContext context) {
    // print("rebuild bro bro /........");
    return SizedBox(
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 40,
          width: width,
          decoration: BoxDecoration(
            color: color,
            borderRadius: const BorderRadius.all(
              Radius.circular(15),
            ),
            border: Border.all(
              color: Appcolors.primaryColor,
              width: 1.0,
            ),
          ),
          child: child,
        ),
      ),
    );
  }
}
