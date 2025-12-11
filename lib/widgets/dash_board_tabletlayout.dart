import 'package:flutter/material.dart';
import 'package:responsiveui/widgets/DashBoardMobileLayout.dart';
import 'package:responsiveui/widgets/custom_drawer.dart';

class DashBoardTabletlayout extends StatelessWidget {
  const DashBoardTabletlayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 32),
        Expanded(flex: 3, child: Padding(
          padding: const EdgeInsets.only(top: 40),
          child: DashBoardMobileLayout(),
        )),
        SizedBox(width: 32),
      ],
    );
  }
}


