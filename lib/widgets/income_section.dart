import 'package:flutter/material.dart';
import 'package:responsiveui/utils/size_config.dart';
import 'package:responsiveui/widgets/custom_background_container.dart';
import 'package:responsiveui/widgets/detaield_income_chart.dart';
import 'package:responsiveui/widgets/income_chart.dart';
import 'package:responsiveui/widgets/income_detailes.dart';
import 'package:responsiveui/widgets/income_section_body.dart';
import 'package:responsiveui/widgets/incomeheader.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
        child: Column(
      children: [IncomeHeader(), IncomeSectionBody()],
    ));
  }
}


