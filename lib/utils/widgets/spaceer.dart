import 'package:flutter/material.dart';

class VerticalSpacer extends StatelessWidget {
  final double height;
  const VerticalSpacer({super.key, required this.height});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
    );
  }
}

class HorizontalSpacer extends StatelessWidget {
   final double width;
  const HorizontalSpacer({super.key, required this.width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
    );
  }
}
