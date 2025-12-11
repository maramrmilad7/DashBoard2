import 'package:flutter/material.dart';
import 'package:responsiveui/utils/app_styles.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'All Expenses',
          style: AppStyles.styleSemiBold20(context),
        ),
        Expanded(child: SizedBox()),
        TextButton(
          onPressed: () {},
          child:  Text(
            'View All',
            style: AppStyles.styleSemiBold20(context),
          ),
        ),
      ],
    );
  }
}

