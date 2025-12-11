import 'package:flutter/material.dart';
import 'package:responsiveui/widgets/all_expenses_header.dart';
import 'package:responsiveui/widgets/all_expenses_list_view.dart';
import 'package:responsiveui/widgets/custom_background_container.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(
        children: [
          AllExpensesHeader(),
          const SizedBox(height: 16),
          AllExpensesListView()
        ],
      ),
    );
  }
}

