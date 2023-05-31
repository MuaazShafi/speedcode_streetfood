import 'package:flutter/material.dart';
import 'package:speedcode_streetfood/Screens/screen_onBoarding2.dart';
import 'package:speedcode_streetfood/Screens/screen_signup.dart';
import 'package:get/get.dart';
import '../myCustomUtils/colors.dart';


class OnBoarding1 extends StatelessWidget {
  const OnBoarding1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: StreetFoodColors.whiteColor,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: StreetFoodColors.whiteColor,
          actions: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(right: 10),
                child: GestureDetector(
                  onTap: () {
                    Get.to(SignupScreen());
                  },
                  child: Text(
                    "Skip",
                    style: TextStyle(
                        color: StreetFoodColors.greyColor,
                        fontFamily: 'PoppinsMedium',
                        fontSize: 15),
                  ),
                ),
              ),
            )
          ],
        ),
        body: Column(
          children: [
            Expanded(
              flex: 3,
              child: Image.asset('images/oB01.png'),
            ),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Text(
                    "Get all the healthy recipes\nthat you need",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontFamily: 'PoppinsMedium', fontSize: 19),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Whether you are losing or gaining. we\nhave all the "
                    "recipes you’ll need.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: StreetFoodColors.greyColor,
                      fontFamily: 'PoppinsRegular',
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: FloatingActionButton(
            backgroundColor: StreetFoodColors.yellowColor,
            onPressed: () {
              Get.to(OnBoarding2());
            },
            child: Icon(
              Icons.arrow_forward,
              color: StreetFoodColors.blackColor,
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}
