import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:speedcode_streetfood/chefScreens/screen_switching.dart';
import 'package:speedcode_streetfood/layouts/item_feature_recipe.dart';
import 'package:speedcode_streetfood/layouts/item_food.dart';
import 'package:speedcode_streetfood/myCustomUtils/category_indicator.dart';
import 'package:speedcode_streetfood/myCustomUtils/indicator.dart';
import '../myCustomUtils/colors.dart';
import '../myCustomUtils/my_drawer_list.dart';
import '../userScreens/screen_login.dart';
import '../userScreens/screen_notification.dart';
import '../userScreens/screen_search.dart';
import '../userScreens/screen_setting.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({Key? key}) : super(key: key);
  static var currentIndexIndicator = 0;
  static var currentIndexCategory = 0;
  static var bottomBarCurrentIndex = 0;
  static bool? switchValue;

  static const List<String> imageList = [
    'images/mutton.jpg',
    'images/chicken.jpg',
    'images/soup.jpg',
    'images/slices.jpg',
    'images/burger.jpg',
  ];
  static const List<String> itemName = [
    'mutton champ',
    'tikka boti',
    'Fruit Chat',
    'Tower Sandwich',
    'Zinger Burger',
  ];
  static const List<String> categoryName = [
    'ALL',
    'BBQ',
    'Traditional Foods',
    'Desserts',
    'Fast Food',
  ];

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(
          width: 275,
          child: ListView(
            children: [
              DrawerHeader(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 7),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 72,
                            width: 72,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: StreetFoodColors.whiteColor,
                              border: Border.all(
                                color: StreetFoodColors.greyColor,
                              ),
                            ),
                            child: Center(
                              child: CircleAvatar(
                                radius: 32,
                                backgroundImage: AssetImage('images/profile.jpg'),
                              ),
                            ),
                          ),
                          Switch(
                            // materialTapTargetSize:
                            //     MaterialTapTargetSize.shrinkWrap,
                            activeColor: StreetFoodColors.yellowColor,
                            value: HomeLayout.switchValue ?? false,
                            onChanged: (bool value) {
                              setState(() {
                                HomeLayout.switchValue = value;
                              });
                              if(HomeLayout.switchValue!){
                                Get.to(SwitchingScreen());
                                HomeLayout.switchValue=false;
                              }
                            },
                          )
                        ],
                      ),
                      Spacer(),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "John ",
                          style: TextStyle(
                            color: StreetFoodColors.blackColor,
                            fontFamily: 'PoppinsMedium',
                            fontSize: 12,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "abc@gmail.com",
                          style: TextStyle(
                            color: StreetFoodColors.greyColor,
                            fontFamily: 'PoppinsRegular',
                            fontSize: 9,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              MyDrawerList(
                text: "Setting",
                suffixIcon: Icons.arrow_forward_ios,
                prefixIcon: Icons.settings,
                onTap: () {
                  Get.to(Setting());
                },
                paddingLeft: 10,
                paddingRight: 50,
                paddingTop: 30,
              ),
              MyDrawerList(
                text: "Log Out",
                suffixIcon: Icons.arrow_forward_ios,
                prefixIcon: Icons.logout_sharp,
                onTap: () {
                  Get.defaultDialog(
                    title: 'Logout',
                    middleText: "Are you sure you want to log out?",
                    confirm: InkWell(
                      onTap: () {
                        Get.to(LoginScreen());
                      },
                      child: Ink(
                        height: 30,
                        width: 55,
                        decoration: BoxDecoration(
                          color: StreetFoodColors.yellowColor,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Center(
                          child: Text(
                            "YES",
                            style: TextStyle(
                              color: StreetFoodColors.whiteColor,
                              fontFamily: 'PoppinsRegular',
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                    ),
                    cancel: InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: Ink(
                        height: 30,
                        width: 55,
                        decoration: BoxDecoration(
                            color: StreetFoodColors.whiteColor,
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(
                              color: StreetFoodColors.yellowColor,
                            )),
                        child: Center(
                          child: Text(
                            "NO",
                            style: TextStyle(
                              color: StreetFoodColors.yellowColor,
                              fontFamily: 'PoppinsRegular',
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
                paddingLeft: 10,
                paddingRight: 50,
                paddingTop: 10,
              ),
            ],
          ),
        ),
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool isScrolled) {
            return [
              SliverAppBar(
                floating: true,
                backgroundColor: StreetFoodColors.darkGreyColor,
                automaticallyImplyLeading: false,
                bottom: PreferredSize(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Container(
                      height: 180,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundImage:
                                    AssetImage('images/profile.jpg'),
                              ),
                              Spacer(),
                              Badge(
                                child: GestureDetector(
                                  onTap: () {
                                    Get.to(NotificationScreen());
                                  },
                                  child: Icon(
                                    Icons.notifications_none,
                                    color: StreetFoodColors.whiteColor,
                                  ),
                                ),
                              ),
                              Builder(
                                builder: (context) => GestureDetector(
                                  onTap: () {
                                    Scaffold.of(context).openDrawer();
                                  },
                                  child: Icon(
                                    Icons.menu,
                                    color: StreetFoodColors.whiteColor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Hello, John',
                            style: TextStyle(
                              color: StreetFoodColors.greyColor,
                              fontFamily: 'PoppinsRegular',
                              fontSize: 12,
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                              text: 'Make your own food,',
                              style: TextStyle(
                                fontFamily: 'PoppinsMedium',
                                fontSize: 15,
                                color: StreetFoodColors.whiteColor,
                              ),
                              children: [
                                TextSpan(
                                  text: '\nstay at',
                                ),
                                TextSpan(
                                  text: ' Home',
                                  style: TextStyle(
                                    color: StreetFoodColors.yellowColor,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                              height: 29,
                              width: 29,
                              decoration: BoxDecoration(
                                color: StreetFoodColors.yellowColor,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(5),
                                ),
                              ),
                              child: GestureDetector(
                                onTap: () {},
                                child: GestureDetector(
                                  onTap: () {
                                    Get.to(SearchScreen());
                                  },
                                  child: Icon(
                                    Icons.search,
                                    color: StreetFoodColors.whiteColor,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  preferredSize: Size.fromHeight(150),
                ),
              ),
            ];
          },
          body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 15, bottom: 5),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Feature Recipe',
                      style: TextStyle(
                        color: StreetFoodColors.blackColor,
                        fontFamily: 'PoppinsSemiBold',
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 153,
                  width: double.maxFinite,
                  child: PageView.builder(
                    onPageChanged: (index) {
                      setState(() {
                        HomeLayout.currentIndexIndicator =
                            index % HomeLayout.imageList.length;
                      });
                    },
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => ItemFeatureRecipe(index),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for (var a = 0; a < HomeLayout.imageList.length; a++)
                      Indicator(isSelected: HomeLayout.currentIndexIndicator == a,)
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 20, top: 15, bottom: 10, right: 20),
                  child: Row(
                    children: [
                      Text(
                        'Categories',
                        style: TextStyle(
                          color: Color(0xff000000),
                          fontFamily: 'PoppinsSemiBold',
                          fontSize: 15,
                        ),
                      ),
                      Spacer(),
                      Icon(
                        Icons.navigate_before,
                        color: StreetFoodColors.greyColor,
                      ),
                      Icon(
                        Icons.navigate_next,
                        color: StreetFoodColors.yellowColor,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        for (var b = 0; b < HomeLayout.imageList.length; b++)
                          CategoryIndicator(isSelected1: HomeLayout.currentIndexCategory == b,
                              )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: GridView.builder(
                    shrinkWrap: true,
                    itemCount: HomeLayout.imageList.length,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 15,
                      mainAxisSpacing: 15,
                      mainAxisExtent: 220,
                    ),
                    itemBuilder: (context, i) => ItemFood(i),
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