import 'package:flutter/material.dart';
import 'package:responsiveui/widgets/custom_background_container.dart';
import 'package:responsiveui/widgets/latest_transaction.dart';
import 'package:responsiveui/widgets/quick_invoice_form.dart';
import 'package:responsiveui/widgets/quick_invoice_header.dart';

class QuickInvoiceItem extends StatelessWidget {
  const QuickInvoiceItem({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      padding: 24,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoiceHeader(),
          const SizedBox(height: 24),
          LatsetTransaction(),
          Divider(
            height: 48,
          ),
          QuickInvoiceForm()
        ],
      ),
    );
  }
}
