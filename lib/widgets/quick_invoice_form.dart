import 'package:flutter/material.dart';
import 'package:responsiveui/widgets/custom_button.dart';
import 'package:responsiveui/widgets/title_text_feild.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TitleTextFeild(
                title: "Customer Name",
                hint: "Type Customer Name",
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Expanded(
              child: TitleTextFeild(
                title: "Customer Email",
                hint: "Type Customer Email",
              ),
            )
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
              child: TitleTextFeild(
                title: "Item Name",
                hint: "Type Item Name",
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Expanded(
              child: TitleTextFeild(
                title: "Item mount",
                hint: "USD",
              ),
            )
          ],
        ),
        SizedBox(height: 24),
        Row(children: [
          Expanded(
              child: CustomButton(
            textColor: Color(0xFF4DB7F2),
            backgroundColor: Colors.transparent,
          )),
          SizedBox(height: 24),
          Expanded(child: CustomButton()),
        ]),
      ],
    );
  }
}
