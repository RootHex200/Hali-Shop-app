import 'package:flutter/material.dart';

import '../../../../utils/colors.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        // this is image 
        const Positioned(
          top: 10,
          left: 1,
          right: 1,
          child: Image(
              height: 100,
              width: 100,
              image: AssetImage("assets/images/monarch_mart_no_bg_logo.png")),
        ),

        // this is backbutton
        Positioned(
          top: 10,
          left: 10,
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Appcolors.primaryColor,
            ),
          ),
        ),
      ]),
    );
  }
}
