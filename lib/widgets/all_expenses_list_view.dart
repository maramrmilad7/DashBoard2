import 'package:flutter/material.dart';
import 'package:responsiveui/models/all_expenses_item_model.dart';
import 'package:responsiveui/utils/app_images.dart';
import 'package:responsiveui/widgets/all_expenses_item.dart';

class AllExpensesListView extends StatefulWidget {
  const AllExpensesListView({super.key});

  @override
  State<AllExpensesListView> createState() => _AllExpensesListViewState();
}

const List<AllExpensesItemModel> itemModel = [
  AllExpensesItemModel(
    image: Assets.imagesIncome,
    title: 'Income',
    price: r'$120.00',
    date: 'April 2025',
  ),
  AllExpensesItemModel(
    image: Assets.imagesExpenses,
    title: 'Expense',
    price: r'$80.00',
    date: 'April 2025',
  ),
  AllExpensesItemModel(
    image: Assets.imagesBalance,
    title: 'Balance',
    price: r'$40.00',
    date: 'April 2025',
  ),
];

int SelectedIndex = 0;

class _AllExpensesListViewState extends State<AllExpensesListView> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              SelectedIndex = 0;
            },
            child: AllExpensesItem(
              isSelected: SelectedIndex == 0,
              itemModel: itemModel[0],
            ),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              SelectedIndex = 1;
            },
            child: AllExpensesItem(
              isSelected: SelectedIndex == 1,
              itemModel: itemModel[1],
            ),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              SelectedIndex = 2;
            },
            child: AllExpensesItem(
              isSelected: SelectedIndex == 2,
              itemModel: itemModel[2],
            ),
          ),
        )
      ],
    );
  }
}
