import 'package:flutter/material.dart';
import 'package:responsiveui/models/user_info_model.dart';
import 'package:responsiveui/utils/app_images.dart';
import 'package:responsiveui/widgets/user_info_list_tile.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});
  static const userInfoList = [
    UserInfoModel(
        image: Assets.imagesAvatar1,
        title: 'Madrani Andi',
        subtitle: 'Madraniadi20@gmail'),
    UserInfoModel(
        image: Assets.imagesAvatar2,
        title: 'Josua Nunito',
        subtitle: 'Josh Nunito@gmail.com'),
    UserInfoModel(
        image: Assets.imagesAvatar3,
        title: 'Lekan Okeowo',
        subtitle: 'demo@gmail.com'),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: userInfoList
            .map((e) =>
                IntrinsicWidth(child: UserInfoListTile(userInfoModel: e)))
            .toList(),
      ),
    );
   
  }
}