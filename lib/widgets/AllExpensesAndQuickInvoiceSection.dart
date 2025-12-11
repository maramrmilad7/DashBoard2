import 'package:flutter/material.dart';
import 'package:responsiveui/widgets/Quick_invoice_item.dart';
import 'package:responsiveui/widgets/all_expenses_widget.dart';

class AllExpensesAndQuickInvoiceSection extends StatelessWidget {
  const AllExpensesAndQuickInvoiceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(children: [
             // SizedBox(height: 40),
              AllExpenses(),
              SizedBox(height: 24),
              QuickInvoiceItem()
            ]);
  }
}