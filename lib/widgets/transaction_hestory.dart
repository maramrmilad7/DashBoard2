import 'package:flutter/material.dart';
import 'package:responsiveui/widgets/TransactionHistoryHeader.dart';
import 'package:responsiveui/widgets/transaction_history_list_view.dart';

class TransactionHestory extends StatelessWidget {
  const TransactionHestory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TransactionHistoryHeader(),
        SizedBox(
          height: 20 + 16,
        ),
        TransactionHistoryListView()
      ],
    );
  }
}
