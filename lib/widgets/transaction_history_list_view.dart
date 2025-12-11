import 'package:flutter/material.dart';
import 'package:responsiveui/models/transaction_hisroty_model.dart';
import 'package:responsiveui/widgets/transaction_item.dart';

class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({super.key});
  static const list = [
    TransactionHisrotyModel(
        amount: r'$20,129',
        date: '13 Apr, 2022 ',
        title: 'Cash Withdrawal',
        isWithDrawer: true),
    TransactionHisrotyModel(
        amount: r'$2,000',
        date: '13 Apr, 2022 at 3:30 PM',
        title: 'Landing Page project',
        isWithDrawer: false),
    TransactionHisrotyModel(
        amount: r'$20,129',
        date: '13 Apr, 2022 at 3:30 PM',
        title: 'Juni Mobile App project',
        isWithDrawer: false),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
        children: list.map((e) => TransactionItem(transactionHisrotyModel: e)).toList()
    );
  }
}
