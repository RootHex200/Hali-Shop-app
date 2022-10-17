import 'package:flutter/material.dart';
import 'package:monarch_mart/utils/colors.dart';

class ElevatedButtonNoBG extends StatelessWidget {
  const ElevatedButtonNoBG({
    super.key,
    required void Function()? onTap,
    required Widget child,
    
  });

  @override
  Widget build(BuildContext context) {
    void Function()? onTap;
    Widget? child;

    return InkWell(
      onTap: onTap,
      child: Container(
        height: 40,
        width: double.infinity,
        decoration: BoxDecoration(
         // color: Appcolors.scaffoldBGColor,
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
    );
  }
}
