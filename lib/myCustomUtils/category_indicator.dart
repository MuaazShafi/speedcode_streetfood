import 'package:flutter/material.dart';

import 'colors.dart';

class CategoryIndicator extends StatelessWidget {
  bool isSelected1;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 1),
      child: Container(
        height: 29,
        width: 90,
        decoration: BoxDecoration(
          color: isSelected1
              ? StreetFoodColors.yellowColor
              : StreetFoodColors.whiteColor,
          borderRadius: BorderRadius.circular(07),
          border: Border.all(
            width: 1.5,
            color: StreetFoodColors.yellowColor,
          ),
        ),
        child: Center(child: Text("---")),
      ),
    );
  }

  CategoryIndicator({
    required this.isSelected1,
  });
}
