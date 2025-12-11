import 'package:flutter/material.dart';
import 'package:responsiveui/models/drawer_item_model.dart';
import 'package:responsiveui/utils/app_images.dart';
import 'package:responsiveui/widgets/drawer_item.dart';

class CustomDrawerListView extends StatefulWidget {
  const CustomDrawerListView({super.key});

  @override
  State<CustomDrawerListView> createState() => _CustomDrawerListViewState();
}

class _CustomDrawerListViewState extends State<CustomDrawerListView> {
  List<DrawerItemModel> items = [
    DrawerItemModel(
      title: 'Dashboard',
      image: Assets.imagesDashboard,
    ),
    DrawerItemModel(
      title: 'My Transaction',
      image: Assets.imagesMyTransctions,
    ),
    DrawerItemModel(
      title: 'Statistics',
      image: Assets.imagesStatistics,
    ),
    DrawerItemModel(
      title: 'Wallet Account',
      image: Assets.imagesWalletAccount,
    ),
    DrawerItemModel(
      title: 'My Investments',
      image: Assets.imagesMyInvestments,
    ),
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              if (selectedIndex != index) {
                setState(() {
                  selectedIndex = index;
                });
              }
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: DrawerItem(
                isActive: selectedIndex == index,
                drawerItemModel: items[index],
              ),
            ),
          );
        });
  }
}
