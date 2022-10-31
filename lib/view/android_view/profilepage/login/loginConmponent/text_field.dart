import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:monarch_mart/utils/colors.dart';

class TextFieldLogin extends StatelessWidget {
  final String hint;
  final TextAlignVertical? textAlignVertical;
  final TextInputType? keyboardType;
  final int? maxLength;
  final double? height;
  final double? width;

  const TextFieldLogin({
    super.key,
    required this.hint,
    this.textAlignVertical,
    this.keyboardType,
    this.maxLength,
    this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLength: maxLength,
      textAlign: TextAlign.center,
      textAlignVertical: textAlignVertical,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
         borderSide: const BorderSide(color: Appcolors.primaryColor),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(4)),
          borderSide: BorderSide(width: 1, color: Appcolors.primaryColor),
        ),
        isDense: true,
        contentPadding: const EdgeInsets.all(8),
        filled: true,
        fillColor: Colors.white,
        hintText: hint,
        hintTextDirection: TextDirection.ltr,
        hintStyle: TextStyle(
          fontSize: 12.sp,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
