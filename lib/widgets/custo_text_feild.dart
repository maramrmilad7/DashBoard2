import 'package:flutter/material.dart';
import 'package:responsiveui/utils/app_styles.dart';

class CustomTextFeild extends StatelessWidget {
  const CustomTextFeild({super.key, required this.hint});
  final String hint;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          enabledBorder: BuildBorder(),
          focusedBorder: BuildBorder(),
          fillColor: Color(0xFFFAFAFA),
          filled: true,
          hintText: hint,
          hintStyle: AppStyles.styleRegular12(context).copyWith(
            color: Color(0xFFBDBDBD),
          ),
          border: BuildBorder()),
    );
  }

  OutlineInputBorder BuildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: Color(0xFFFAFAFA)),
    );
  }
}
