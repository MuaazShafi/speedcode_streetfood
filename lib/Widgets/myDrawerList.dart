import 'package:flutter/material.dart';

import '../colors.dart';

class MyDrawerList extends StatelessWidget {
  const MyDrawerList({
    super.key,
    required this.text,
    required this.suffixIcon,
    required this.prefixIcon,
    this.onTap,
    this.paddingLeft,
    this.paddingRight,
    this.paddingTop,
  });

  final VoidCallback? onTap;
  final IconData prefixIcon;
  final IconData suffixIcon;
  final String text;
  final double? paddingRight;
  final double? paddingLeft;
  final double? paddingTop;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        right: paddingRight ?? 0,
        left: paddingLeft ?? 0,
        top: paddingTop ?? 0,
      ),
      child: GestureDetector(
        onTap: onTap,
        child: Material(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
          elevation: 2,
          child: Container(
            height: 32,
            width: 228,
            child: Row(
              children: [
                Icon(
                  prefixIcon,
                  color: StreetFoodColors.yellowColor,
                  size: 20,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(text),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Icon(
                    suffixIcon,
                    color: StreetFoodColors.yellowColor,
                    size: 15,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
