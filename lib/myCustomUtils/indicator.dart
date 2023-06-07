import 'package:flutter/material.dart';

import 'colors.dart';

class Indicator extends StatelessWidget {
  bool isSelected;




  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: Container(
        height: isSelected ? 12 : 10,
        width: isSelected ? 12 : 10,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isSelected
              ? StreetFoodColors.yellowColor
              : StreetFoodColors.greyColor,
        ),
      ),
    );
  }

  Indicator({
    required this.isSelected,
  });
}
