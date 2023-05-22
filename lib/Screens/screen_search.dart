import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:speedcode_streetfood/colors.dart';

void main() {
  runApp(SearchScreen());
}

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

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
            "Search",
            style: TextStyle(
              color: StreetFoodColors.blackColor,
              fontFamily: "PoppinsMedium",
              fontSize: 13,
            ),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Center(
            child: SizedBox(
              height: double.maxFinite,
              width: 317,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Material(
                    borderRadius: BorderRadius.all(
                      Radius.circular(14),
                    ),
                    shadowColor: StreetFoodColors.blackColor,
                    elevation: 1,
                    child: SizedBox(
                      height: 41,
                      width: 317,
                      child: Row(
                        children: [
                          Expanded(
                            flex: 7,
                            child: TextField(
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(8),
                                prefixIcon: Icon(
                                  Icons.search,
                                  color: StreetFoodColors.darkGreyColor,
                                ),
                                hintText: 'Search Recipe here',
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Container(
                                height: 30,
                                width: 20,
                                decoration: BoxDecoration(
                                  color: StreetFoodColors.yellowColor,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Center(
                                  child: ImageIcon(
                                    AssetImage('images/sliderIcon.png'),
                                    color: StreetFoodColors.whiteColor,
                                    size: 20,
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 35),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Chiken Wings Recipe",
                          style: TextStyle(
                            color: StreetFoodColors.greyColor,
                          ),
                        ),
                        Icon(
                          CupertinoIcons.share,
                          color: StreetFoodColors.greyColor,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Divider(
                    indent: 30,
                    endIndent: 30,
                    thickness: 1.5,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Chiken Wings Recipe",
                        style: TextStyle(color: StreetFoodColors.greyColor),
                      ),
                      Icon(CupertinoIcons.share,
                          color: StreetFoodColors.greyColor)
                    ],
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Divider(
                    indent: 30,
                    endIndent: 30,
                    thickness: 1.5,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Chiken Wings Recipe",
                        style: TextStyle(color: StreetFoodColors.greyColor),
                      ),
                      Icon(CupertinoIcons.share,
                          color: StreetFoodColors.greyColor)
                    ],
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Divider(
                    indent: 30,
                    endIndent: 30,
                    thickness: 1.5,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Chiken Wings Recipe",
                        style: TextStyle(color: StreetFoodColors.greyColor),
                      ),
                      Icon(CupertinoIcons.share,
                          color: StreetFoodColors.greyColor)
                    ],
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Divider(
                    indent: 30,
                    endIndent: 30,
                    thickness: 1.5,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
