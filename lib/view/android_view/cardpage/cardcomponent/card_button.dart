import 'package:flutter/material.dart';

class CardButton extends StatelessWidget {
  final Color? iconcolor;
  final Color bodercolor;
  final IconData icondata;

  const CardButton(
      {super.key,
      this.iconcolor,
      required this.bodercolor,
      required this.icondata});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black26,
        border: Border.all(color: bodercolor, width: 1.5),
        borderRadius: const BorderRadius.all(Radius.circular(6.0)),
      ),
      height: 40,
      width: 40,
      child: Center(
        child:  Icon(
              icondata,
              color: iconcolor,
            ),
      ),
    );
  }
}
