import 'package:flutter/material.dart';
import 'package:responsiveui/utils/size_config.dart';
import 'package:responsiveui/widgets/detaield_income_chart.dart';
import 'package:responsiveui/widgets/income_chart.dart';
import 'package:responsiveui/widgets/income_detailes.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({super.key});
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return width >= SizeConfig.desktop && width < 1750
        ? Expanded(
            child: Padding(
            padding: const EdgeInsets.all(16),
            child: DetaieldIncomeChart(),
          ))
        : Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Expanded(child: IncomeChart()),
            Expanded(flex: 2, child: IncomeDetailes())
          ]);
  }
}
