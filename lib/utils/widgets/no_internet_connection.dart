import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class NoInternetConnection extends StatelessWidget {
  const NoInternetConnection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(child: Lottie.asset("assets/images/nointernet.json")),
    );
  }
}