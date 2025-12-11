import 'package:flutter/material.dart';
import 'package:responsiveui/widgets/AllExpensesAndQuickInvoiceSection.dart';
import 'package:responsiveui/widgets/custom_drawer.dart';
import 'package:responsiveui/widgets/income_section.dart';
import 'package:responsiveui/widgets/mycard_and_transactionhistory_section.dart';

class DashBoardDesktopLayout extends StatelessWidget {
  const DashBoardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
  return  Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 3,
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Row(
                  children: [
                    Expanded(
                        flex: 2,
                        child: Padding(
                          padding: EdgeInsets.only(top: 40),
                          child: AllExpensesAndQuickInvoiceSection(),
                        )),
                    SizedBox(
                      width: 24,
                    ),
                    Expanded(
                        child: Column(
                      children: [
                        SizedBox(
                          height: 40,
                        ),
                        MycardAndTransactionhistorySection(),
                        SizedBox(
                          height: 24,
                        ),
                        Expanded(child: IncomeSection()),
                      ],
                    )),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  
   
  }
}
