import 'package:flutter/material.dart';
import 'package:responsiveui/models/drawer_item_model.dart';
import 'package:responsiveui/widgets/active_item.dart';
import 'package:responsiveui/widgets/inactive_item.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem(
      {super.key, required this.drawerItemModel, required this.isActive});
  final DrawerItemModel drawerItemModel;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveItem(
            drawerItemModel: drawerItemModel,
          )
        : InActiveItem(drawerItemModel: drawerItemModel);
  }
}



