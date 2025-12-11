import 'package:flutter/material.dart';
import 'package:responsiveui/models/transaction_hisroty_model.dart';
import 'package:responsiveui/utils/app_styles.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({super.key,required this.transactionHisrotyModel});
  final TransactionHisrotyModel transactionHisrotyModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Color(0xFFF5F5F5),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        title: Text(
          transactionHisrotyModel.title,
          style: AppStyles.styleBold16(context)
        ),
        subtitle: Text(transactionHisrotyModel.date,
          style: AppStyles.styleRegular16(context).copyWith(
            color: Color(0xFFAAAAAA),
          ),
        ),
        trailing: Text(
          transactionHisrotyModel.amount,
          style: AppStyles.styleMedium20(context).copyWith(
            color:transactionHisrotyModel.isWithDrawer? Color(0xFFE74C3C): Color(0xFF7DD97B),
          ),
      ),)
    );
  }
}
