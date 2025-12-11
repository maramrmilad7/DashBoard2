import 'package:flutter/material.dart';
import 'package:responsiveui/utils/app_styles.dart';

class IncomeHeader extends StatelessWidget {
  const IncomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return   Row(children: [
      Text("Income",style: AppStyles.styleSemiBold20(context),),
      Spacer(),
      Text("Monthly",style: AppStyles.styleMedium16(context),)
    ],);
  }
}