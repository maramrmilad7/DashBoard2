import 'package:flutter/material.dart';
import 'package:responsiveui/utils/app_styles.dart';
import 'package:responsiveui/widgets/custo_text_feild.dart';

class TitleTextFeild extends StatelessWidget {
  const TitleTextFeild({super.key, required this.title, required this.hint});
  final String title, hint;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppStyles.styleMedium16(context),
        ),
        SizedBox(
          height: 12,
        ),
        CustomTextFeild(
          hint: hint,
        )
      ],
    );
  }
}
