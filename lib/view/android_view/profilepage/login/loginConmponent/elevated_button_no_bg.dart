import 'package:flutter/material.dart';
import 'package:monarch_mart/utils/colors.dart';

class ElevatedButtonAuth extends StatelessWidget {
  const ElevatedButtonAuth({
    super.key,
    required Function() onTap,
    required Widget child,
    Color? color,
  });

  @override
  Widget build(BuildContext context) {
    void Function()? onTap;
    Widget? child;
    Color? color;

    return SizedBox(
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 40,
          width: double.infinity,
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
