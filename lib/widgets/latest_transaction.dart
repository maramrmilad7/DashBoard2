import 'package:flutter/material.dart';
import 'package:responsiveui/utils/app_styles.dart';
import 'package:responsiveui/widgets/latest_transaction_list_view.dart';

class LatsetTransaction extends StatelessWidget {
  const LatsetTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "Latest Transaction",
            style: AppStyles.styleMedium16(context),
          ),
        ),
        LatestTransactionListView()
      ],
    );
  }
}
