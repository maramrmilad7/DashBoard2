import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:responsiveui/utils/app_styles.dart';

class DetaieldIncomeChart extends StatefulWidget {
  const DetaieldIncomeChart({super.key});

  @override
  State<DetaieldIncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<DetaieldIncomeChart> {
  int activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1, child: PieChart(getChartData()));
  }

  PieChartData getChartData() {
    return PieChartData(
        pieTouchData: PieTouchData(
          enabled: true,
          touchCallback: (event, response) {
            activeIndex = response?.touchedSection?.touchedSectionIndex ?? -1;
            setState(() {});
          },
        ),
        sectionsSpace: 0,
        sections: [
          PieChartSectionData(
            titlePositionPercentageOffset: activeIndex == 0 ? 1.5 : null,
            titleStyle: AppStyles.styleMedium16(context).copyWith(
              color: activeIndex == 0 ? null : Colors.white,
            ),
            radius: activeIndex == 0 ? 60 : 50,
            title: activeIndex == 0 ? 'Design service' : '40%',
            value: 40,
            color: Color(0xFF20BBC7),
          ),
          PieChartSectionData(
            titlePositionPercentageOffset: activeIndex == 1 ? 2.4 : null,
            titleStyle: AppStyles.styleMedium16(context).copyWith(
              color: activeIndex == 1 ? null : Colors.white,
            ),
            value: 25,
            radius: activeIndex == 1 ? 60 : 50,
            title: activeIndex == 1 ? 'Design product' : '25%',
            color: Color(0xFF4DB7F2),
          ),
          PieChartSectionData(
            titlePositionPercentageOffset: activeIndex == 2 ? 1.3 : null,
            titleStyle: AppStyles.styleMedium16(context).copyWith(
              color: activeIndex == 2 ? null : Colors.white,
            ),
            radius: activeIndex == 2 ? 60 : 50,
            title: activeIndex == 2 ? 'Product royalti' : '20%',
            value: 20,
            color: Color(0xFF064060),
          ),
          PieChartSectionData(
            titleStyle: AppStyles.styleMedium16(context).copyWith(
              color: activeIndex == 3 ? null : Colors.white,
            ),
            titlePositionPercentageOffset: activeIndex == 3 ? 1.5 : null,
            radius: activeIndex == 3 ? 60 : 50,
            color: Color(0xFFE2DECD),
            title: activeIndex == 3 ? 'Other' : '22%',
            value: 22,
          ),
        ]);
  }
}
