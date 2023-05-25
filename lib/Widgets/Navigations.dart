import 'package:flutter/material.dart';
import 'package:speedcode_streetfood/layouts/layout_favourite.dart';
import 'package:speedcode_streetfood/colors.dart';
import 'package:speedcode_streetfood/layouts/layout_home.dart';
import 'package:water_drop_nav_bar/water_drop_nav_bar.dart';

import '../layouts/layout_editProfile.dart';

class Navigation extends StatefulWidget {
  Navigation({Key? key}) : super(key: key);

  static const List<Widget> pages = [
    HomeLayout(),
    FavouriteLayout(),
    EditProfileLayout(),
  ];

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Navigation.pages[selectedIndex],
        bottomNavigationBar: WaterDropNavBar(
          iconSize: 30,
          inactiveIconColor: StreetFoodColors.whiteColor,
          backgroundColor: StreetFoodColors.blackColor,
          waterDropColor: StreetFoodColors.yellowColor,
          barItems: [
            BarItem(
              filledIcon: Icons.home,
              outlinedIcon: Icons.home_outlined,
            ),
            BarItem(
                filledIcon: Icons.favorite,
                outlinedIcon: Icons.favorite_border),
            BarItem(
              filledIcon: Icons.person,
              outlinedIcon: Icons.perm_identity,
            )
          ],
          selectedIndex: selectedIndex,
          onItemSelected: (int index) {
            setState(() {
              selectedIndex = index;
            });
          },
        ),
      ),
    );
  }
}
