import 'package:flutter/material.dart';
import 'package:responsiveui/widgets/custom_dot_indecator.dart';

class DotsIndicator extends StatelessWidget {
  const DotsIndicator({super.key, required this.currentpageIndex});
  final int currentpageIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
        children: List.generate(
            3,
            (index) => Padding(
                  padding: const EdgeInsets.only(right: 6),
                  child: CustomDotIndicator(
                    
                    isActive: index == currentpageIndex,
                    
                  )
                )));
  }
}
