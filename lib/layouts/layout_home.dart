import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../Screens/screen_login.dart';
import '../Screens/screen_notification.dart';
import '../Screens/screen_search.dart';
import '../Screens/screen_setting.dart';
import '../myCustomUtils/colors.dart';
import '../myCustomUtils/my_drawer_list.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({Key? key}) : super(key: key);
  static var currentIndexIndicator = 0;
  static var currentIndexCategory = 0;
  static var bottomBarCurrentIndex = 0;

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
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: StreetFoodColors.whiteColor,
                ),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('images/profile.jpg'),
                ),
                accountName: Text(
                  "John ",
                  style: TextStyle(
                    color: StreetFoodColors.blackColor,
                    fontFamily: 'PoppinsMedium',
                    fontSize: 12,
                  ),
                ),
                accountEmail: Text(
                  "abc@gmail.com",
                  style: TextStyle(
                    color: StreetFoodColors.greyColor,
                    fontFamily: 'PoppinsRegular',
                    fontSize: 9,
                  ),
                ),
              ),
              Divider(
                thickness: 2,
                color: StreetFoodColors.greyColor,
              ),
              MyDrawerList(
                text: "Setting",
                suffixIcon: Icons.arrow_forward_ios,
                prefixIcon: Icons.settings,
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Setting()));
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
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()));
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
                              Center(
                                child: Builder(
                                  builder: (context) => GestureDetector(
                                    onTap: () {
                                      Scaffold.of(context).openDrawer();
                                    },
                                    child: CircleAvatar(
                                      radius: 30,
                                      backgroundImage:
                                          AssetImage('images/profile.jpg'),
                                    ),
                                  ),
                                ),
                              ),
                              Spacer(),
                              Badge(
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            NotificationScreen(),
                                      ),
                                    );
                                  },
                                  child: Icon(
                                    Icons.notifications_none,
                                    color: StreetFoodColors.whiteColor,
                                  ),
                                ),
                              ),
                              Icon(
                                Icons.menu,
                                color: StreetFoodColors.whiteColor,
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
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => SearchScreen(),
                                      ),
                                    );
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
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Transform(
                        transform: Matrix4.skewX(-0.15),
                        child: Container(
                          height: 153,
                          width: 302,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fitWidth,
                              image: AssetImage(
                                HomeLayout.imageList[
                                    index % HomeLayout.imageList.length],
                              ),
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            ),
                          ),
                          child: Padding(
                            padding:
                                const EdgeInsets.only(left: 18.0, bottom: 10),
                            child: Stack(
                              children: [
                                Positioned(
                                  top: 70,
                                  child: Container(
                                    height: 60,
                                    width: 140,
                                    decoration: BoxDecoration(
                                      color: Colors.black.withOpacity(0.7),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        HomeLayout.itemName[
                                            index % HomeLayout.itemName.length],
                                        style: TextStyle(
                                            color: StreetFoodColors.whiteColor,
                                            fontSize: 15,
                                            fontFamily: 'PoppinsSemiBold'),
                                      ),
                                      Text(
                                        'by Jacob Jones',
                                        style: TextStyle(
                                            color: StreetFoodColors.greyColor,
                                            fontFamily: 'PoppinsRegular',
                                            fontSize: 10),
                                      ),
                                      RatingBar.builder(
                                        initialRating: 3.5,
                                        minRating: 1,
                                        direction: Axis.horizontal,
                                        allowHalfRating: true,
                                        itemSize: 11,
                                        itemCount: 5,
                                        itemPadding: EdgeInsets.symmetric(
                                            horizontal: 1.0),
                                        itemBuilder: (context, _) => Icon(
                                          Icons.star,
                                          color: StreetFoodColors.yellowColor,
                                        ),
                                        onRatingUpdate: (rating) {
                                          print(rating);
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    // itemCount:HomeScreen.imageList.length,
                    // separatorBuilder: (context, i) => SizedBox(
                    //   width: 15,
                    // ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for (var a = 0; a < HomeLayout.imageList.length; a++)
                      buildIndicator(HomeLayout.currentIndexIndicator == a)
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
                          buildCategoryIndicator(
                              HomeLayout.currentIndexCategory == b)
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
                    itemBuilder: (context, i) => Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(
                            HomeLayout.imageList[i],
                          ),
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.topRight,
                              child: Container(
                                height: 21,
                                width: 21,
                                decoration: BoxDecoration(
                                  color: StreetFoodColors.blackColor
                                      .withOpacity(0.3),
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(
                                  Icons.favorite,
                                  color: StreetFoodColors.whiteColor,
                                  size: 11,
                                ),
                              ),
                            ),
                            Spacer(),
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: Stack(
                                children: [
                                  Container(
                                    height: 50,
                                    width: 150,
                                    decoration: BoxDecoration(
                                      color: Colors.black.withOpacity(0.7),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Chilli Biryani',
                                        style: TextStyle(
                                          color: StreetFoodColors.whiteColor,
                                          fontFamily: 'PoppinsSemiBold',
                                          fontSize: 13,
                                        ),
                                      ),
                                      Text(
                                        'by John Jones',
                                        style: TextStyle(
                                          color: StreetFoodColors.greyColor,
                                          fontFamily: 'PoppinsRegular',
                                          fontSize: 9,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          RatingBar.builder(
                                            initialRating: 3.5,
                                            minRating: 1,
                                            direction: Axis.horizontal,
                                            allowHalfRating: true,
                                            itemSize: 11,
                                            itemCount: 5,
                                            itemPadding: EdgeInsets.symmetric(
                                                horizontal: 1.0),
                                            itemBuilder: (context, _) => Icon(
                                              Icons.star,
                                              color:
                                                  StreetFoodColors.yellowColor,
                                            ),
                                            onRatingUpdate: (rating) {
                                              print(rating);
                                            },
                                          ),
                                          Spacer(),
                                          Icon(
                                            Icons.access_time,
                                            color: StreetFoodColors.whiteColor,
                                            size: 10,
                                          ),
                                          Text(
                                            '30 min',
                                            style: TextStyle(
                                              color:
                                                  StreetFoodColors.whiteColor,
                                              fontSize: 8,
                                              fontFamily: 'PoppinsRegular',
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
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

Widget buildIndicator(bool isSelected) {
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

Widget buildCategoryIndicator(bool isSelected1) {
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
