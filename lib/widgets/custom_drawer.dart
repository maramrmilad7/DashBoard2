import 'package:flutter/material.dart';
import 'package:responsiveui/models/drawer_item_model.dart';
import 'package:responsiveui/models/user_info_model.dart';
import 'package:responsiveui/utils/app_images.dart';
import 'package:responsiveui/widgets/CustomDrawerListView.dart';
import 'package:responsiveui/widgets/inactive_item.dart';
import 'package:responsiveui/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width * 0.7,
        color: Colors.white,
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: UserInfoListTile(
                userInfoModel: UserInfoModel(
                  image: Assets.imagesAvatar3,
                  title: 'Lekan Okeowo',
                  subtitle: 'demo@gmail.com',
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(height: 8),
            ),
            CustomDrawerListView(),
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: [
                  Expanded(
                      child: SizedBox(
                    height: 20,
                  )),
                  InActiveItem(
                      drawerItemModel: DrawerItemModel(
                    title: 'Settings System',
                    image: Assets.imagesSettings,
                  )),
                  InActiveItem(
                      drawerItemModel: DrawerItemModel(
                    title: 'Logout',
                    image: Assets.imagesLogout,
                  )),
                  SizedBox(
                    height: 48,
                  )
                ],
              ),
            )
          ],
        ));
  }
}
