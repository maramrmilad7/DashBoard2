import 'package:flutter/material.dart';
import 'package:responsiveui/utils/app_styles.dart';

class MyCardHeader extends StatelessWidget {
  const MyCardHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return  Text(
          'My Card',
          style: AppStyles.styleSemiBold20(context),
        );
  }
}