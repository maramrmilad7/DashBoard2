import 'package:flutter/material.dart';
import 'package:responsiveui/widgets/custom_background_container.dart';
import 'package:responsiveui/widgets/my_cards_section.dart';
import 'package:responsiveui/widgets/transaction_hestory.dart';

class MycardAndTransactionhistorySection extends StatelessWidget {
  const MycardAndTransactionhistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(
        children: [
          MyCardsSection(),
          Divider(
            height: 40,
            color: Color(0xFFF1F1F1),
          ),
          TransactionHestory(),
        ],
      ),
    );
  }
}
