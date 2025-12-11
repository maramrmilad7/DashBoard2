import 'package:flutter/material.dart';
import 'package:responsiveui/models/all_expenses_item_model.dart';
import 'package:responsiveui/utils/app_styles.dart';
import 'package:responsiveui/widgets/all_expenses_item_header.dart';

class InActiveAllExpensesItem extends StatelessWidget {
  const InActiveAllExpensesItem({super.key, required this.itemModel});
  final AllExpensesItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
    //    color: Color(0xFF4DB7F2),
            color: Colors.white,

        shape: RoundedRectangleBorder(
            side: BorderSide(color: Color(0xFFF1F1F1), width: 1),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
           
            image: itemModel.image,
          ),
          SizedBox(height: 34),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(itemModel.title, style: AppStyles.styleMedium16(context))),
          SizedBox(height: 8),
          FittedBox(
                        fit: BoxFit.scaleDown,

            child: Text(itemModel.date, style: AppStyles.styleRegular14(context))),
          SizedBox(height: 16),
          FittedBox(
                        fit: BoxFit.scaleDown,

            child: Text(itemModel.price, style: AppStyles.styleSemiBold24(context))),
        ],
      ),
    );
  }
}
