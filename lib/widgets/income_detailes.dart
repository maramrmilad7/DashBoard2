import 'package:flutter/material.dart';
import 'package:responsiveui/models/item_details_model.dart';
import 'package:responsiveui/widgets/item_details.dart';

class IncomeDetailes extends StatelessWidget {
  const IncomeDetailes({super.key});
  static const list = [
    ItemDetailsModel(
        title: 'Design service', subTitle: '40%', iconColor: Color(0xFf208CC8)),
    ItemDetailsModel(
        title: 'Design product', subTitle: '25%', iconColor: Color(0xff4EB7F2)),
    ItemDetailsModel(
        title: 'Product royalti',
        subTitle: '20%',
        iconColor: Color(0xFF064061)),
    ItemDetailsModel(
        title: 'Other', subTitle: '22%', iconColor: Color(0xffE2DECD))
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
        children: list.map((e) => ItemDetails(itemDetailsModel: e)).toList());
  }
}
