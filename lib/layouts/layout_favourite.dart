import 'package:flutter/material.dart';
import 'package:speedcode_streetfood/colors.dart';

import '../Widgets/myFavouriteItem.dart';

class FavouriteLayout extends StatelessWidget {
  const FavouriteLayout({Key? key}) : super(key: key);

  static const List<String> desertsImages = [
    'images/oliveoil_sponch_cake.jpg',
    'images/Pumpkin-Spice-Cake-Roll.jpg',
    'images/Pumpkin-Tiramisu.jpg',
    'images/Strawberry-Frech-Cake.jpg',
    'images/Vanilla-Cardamom-Kulfi.jpg',
  ];
  static const List<String> desertImagesName = [
    'olive-oil sponch cake',
    'Pumpkin Spice Cake Roll',
    'Pumpkin Tiramisu       ',
    'Strawberry French Cake',
    'Vanilla Cardamom Kulfi',
  ];

  static const List<String> BBQImages = [
    'images/chicken wings.jpg',
    'images/kabab petty.jpg',
    'images/nuggets.jpg',
    'images/tikka.jpg',
  ];
  static const List<String> BBQImagesName = [
    'chicken wings',
    'kabab petty',
    'nuggets',
    'Strawberry French Cake',
  ];

  static const List<String> fastFoodImages = [
    'images/mutton.jpg',
    'images/chicken.jpg',
    'images/soup.jpg',
    'images/slices.jpg',
    'images/burger.jpg',
  ];
  static const List<String> fastFoodImagesName = [
    'mutton',
    'chicken',
    'soup',
    'slices',
    'burger',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: StreetFoodColors.whiteColor,
          elevation: 0,
          title: Text(
            'Favourite Recipe',
            style: TextStyle(
              color: StreetFoodColors.blackColor,
              fontFamily: 'PoppinsMedium',
              fontSize: 13,
            ),
          ),
          centerTitle: true,
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios,
              size: 22,
              color: StreetFoodColors.blackColor,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Desserts",
                  style: TextStyle(
                    color: StreetFoodColors.blackColor,
                    fontFamily: 'PoppinsSemiBold',
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                FavouriteItem(
                  images: desertsImages,
                  imagesName: desertImagesName,
                ),
                Divider(
                  height: 30,
                  thickness: 2,
                ),
                Text(
                  "BBQ",
                  style: TextStyle(
                    color: StreetFoodColors.blackColor,
                    fontFamily: 'PoppinsSemiBold',
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                FavouriteItem(
                  images: BBQImages,
                  imagesName: BBQImagesName,
                  containerHeight: 50,
                ),
                Divider(
                  height: 30,
                  thickness: 2,
                ),
                Text(
                  "Desserts",
                  style: TextStyle(
                    color: StreetFoodColors.blackColor,
                    fontFamily: 'PoppinsSemiBold',
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                FavouriteItem(
                  images: fastFoodImages,
                  imagesName: fastFoodImagesName,
                  containerHeight: 50,
                ),
                Divider(
                  height: 30,
                  thickness: 2,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
