import 'package:flutter/material.dart';
import 'package:responsiveui/utils/size_config.dart';
import 'package:responsiveui/widgets/DashBoardMobileLayout.dart';
import 'package:responsiveui/widgets/adaptive_layout_widget.dart';
import 'package:responsiveui/widgets/custom_drawer.dart';
import 'package:responsiveui/widgets/dash_board_desktoplayout.dart';
import 'package:responsiveui/widgets/dash_board_tabletlayout.dart';

class DashBoardView extends StatefulWidget {
  const DashBoardView({super.key});

  @override
  State<DashBoardView> createState() => _DashBoardViewState();
}

class _DashBoardViewState extends State<DashBoardView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: MediaQuery.of(context).size.width < SizeConfig.tablet
          ? AppBar(
              elevation: 0,
              backgroundColor: Color(0xffFAFAFA),
              leading: IconButton(
                  onPressed: () {
                    scaffoldKey.currentState!.openDrawer();

                    setState(() {});
                  },
                  icon: Icon(Icons.menu)),
            )
          : null,
      backgroundColor: Color(0xFFF7F9FA),
      drawer: MediaQuery.of(context).size.width < SizeConfig.tablet ? CustomDrawer() : null,
      body: AdaptiveLayoutWidget(
        mobileLayout: (context) => const DashBoardMobileLayout(),
        tabletLayout: (context) => const DashBoardTabletlayout(),
        desktopLayout: (context) => const DashBoardDesktopLayout(),
      ),
    );
  }
}

