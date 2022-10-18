import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextFieldLogin extends StatelessWidget {
  const TextFieldLogin({
    super.key,
    required double width,
    required double height,
    required String hint,
    String? maxLength,
    TextInputType? keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    String ? hint;
    TextAlignVertical? textAlignVertical;
    TextInputType? keyboardType;
    int? maxLength;
    return TextField(
      maxLength: maxLength,
      textAlign: TextAlign.center,
      textAlignVertical: textAlignVertical,
      keyboardType: keyboardType,
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: Colors.grey),
          ),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(4)),
            borderSide: BorderSide(width: 1, color: Colors.grey),
          ),
          isDense: true,
          contentPadding: const EdgeInsets.all(8),
          filled: true,
          fillColor: Colors.white,
          hintText: hint,
          hintTextDirection: TextDirection.ltr,
           hintStyle: TextStyle(
             fontSize: 16.sp,
            fontWeight: FontWeight.w600,
           ),
          ),
    );
  }
}
