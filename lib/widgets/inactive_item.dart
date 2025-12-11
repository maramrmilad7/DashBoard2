import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsiveui/models/drawer_item_model.dart';
import 'package:responsiveui/utils/app_styles.dart';

class InActiveItem extends StatelessWidget {
  const InActiveItem({super.key, required this.drawerItemModel});
  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(
        drawerItemModel.image,
      ),
      title: FittedBox(
        alignment: AlignmentDirectional.centerStart,
        fit: BoxFit.scaleDown,
        child: Text(
          drawerItemModel.title,
          style: AppStyles.styleMedium16(context),
        ),
      ),
    );
  }
}
