import 'package:flutter/material.dart';
import 'package:responsiveui/widgets/AllExpensesAndQuickInvoiceSection.dart';
import 'package:responsiveui/widgets/income_section.dart';
import 'package:responsiveui/widgets/mycard_and_transactionhistory_section.dart';

class DashBoardMobileLayout extends StatelessWidget {
  const DashBoardMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(children: [
      AllExpensesAndQuickInvoiceSection(),
      SizedBox(
        height: 24,
      ),
      MycardAndTransactionhistorySection(),
      SizedBox(
        height: 24,
      ),
      IncomeSection()
    ]));
  }
}