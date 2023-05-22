import 'package:flutter/material.dart';
import 'package:speedcode_streetfood/colors.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  static const List<String> images = [
    'images/chacha1.jpg',
    'images/chachi.jpg',
    'images/bachaOfChahca.jpg',
    'images/andha.jpg',
    'images/chacha1.jpg',
    'images/chachi.jpg',
    'images/bachaOfChahca.jpg',
    'images/andha.jpg',
  ];
  static const List<String> recipeNames = [
    'recipe1',
    'recipe2',
    'recipe3',
    'recipe4',
    'recipe5',
    'recipe6',
    'recipe7',
    'recipe8',
  ];
  static const List<String> names = [
    'chef1',
    'chef2',
    'chef3',
    'chef4',
    'chef5',
    'chef6',
    'chef7',
    'chef8',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
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
          backgroundColor: StreetFoodColors.whiteColor,
          elevation: 1,
          title: Text(
            "Notification",
            style: TextStyle(
              color: StreetFoodColors.blackColor,
              fontFamily: "PoppinsMedium",
              fontSize: 13,
            ),
          ),
          centerTitle: true,
        ),
        body: ListView.separated(
          itemBuilder: (context, i) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Material(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              elevation: .5,
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(images[i]),
                ),
                title: Text(
                  recipeNames[i],
                  style: TextStyle(
                      color: StreetFoodColors.yellowColor,
                      fontFamily: 'PoppinsSemiBold',
                      fontSize: 11),
                ),
                subtitle: RichText(
                  text: TextSpan(
                    text: 'uploaded by ',
                    style: TextStyle(
                        color: StreetFoodColors.greyColor,
                        fontSize: 11,
                        fontFamily: "PoppinsRegular"),
                    children: [
                      TextSpan(
                        text: names[i],
                        style: TextStyle(
                          color: StreetFoodColors.blackColor,
                          fontFamily: 'PoppinsSemiBold',
                        ),
                      ),
                    ],
                  ),
                ),
                trailing: Icon(
                  Icons.more_horiz_outlined,
                  color: StreetFoodColors.blackColor,
                ),
              ),
            ),
          ),
          separatorBuilder: (context, i) => SizedBox(
            height: 10,
          ),
          itemCount: names.length,
        ),
      ),
    );
  }
}
