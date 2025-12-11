import 'package:flutter/material.dart';
import 'package:responsiveui/models/all_expenses_item_model.dart';
import 'package:responsiveui/widgets/active_all_expenses_item.dart';
import 'package:responsiveui/widgets/inactive_all_expenses_item.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem(
      {super.key, required this.itemModel, required this.isSelected});
  final AllExpensesItemModel itemModel;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveAllExpensesItem(
            itemModel: itemModel,
          )
        : InActiveAllExpensesItem(
            itemModel: itemModel,
          );
  }
}
