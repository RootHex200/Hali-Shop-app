import 'package:flutter/material.dart';

import 'package:monarch_mart/utils/colors.dart';

class EditProfileTextField extends StatelessWidget {
  final bool obscureText;
  final String? helpertext;
  const EditProfileTextField({super.key, this.helpertext, required this.obscureText});

  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlign: TextAlign.start,
      autocorrect: true,
      textAlignVertical: TextAlignVertical.center,
      keyboardType: TextInputType.number,
      obscureText: obscureText,
      
      decoration: InputDecoration(
        //TextDecoration(TextAlign.end) 
        
        
        isDense: true,
        helperText: helpertext,
        focusedBorder: const OutlineInputBorder(
          borderRadius:   BorderRadius.all(Radius.circular(4)),
          borderSide: BorderSide(width: 1, color: Appcolors.primaryColor),
        ),
        contentPadding: const EdgeInsets.all(8),
        filled: true,
        fillColor: Colors.white,
        hintTextDirection: TextDirection.ltr,
        hintStyle: const TextStyle(
          fontSize: 14.0,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
