import 'package:flutter/material.dart';
import 'package:responsiveui/models/item_details_model.dart';
import 'package:responsiveui/utils/app_styles.dart';

class ItemDetails extends StatelessWidget {
  const ItemDetails({super.key, required this.itemDetailsModel});
final  ItemDetailsModel itemDetailsModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration:
         ShapeDecoration(color: itemDetailsModel.iconColor, shape: OvalBorder()),
      ),
      title: Text(
        itemDetailsModel.title,
        style: AppStyles.styleRegular16(context),
      ),
      subtitle: Text(itemDetailsModel.subTitle, style: AppStyles.styleMedium16(context)),
    );
  }
}