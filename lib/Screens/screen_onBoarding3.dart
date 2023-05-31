import 'package:flutter/material.dart';
import 'package:speedcode_streetfood/Screens/screen_signup.dart';
import 'package:get/get.dart';
import '../myCustomUtils/colors.dart';

class OnBoarding3 extends StatelessWidget {
  const OnBoarding3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: StreetFoodColors.whiteColor,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: StreetFoodColors.whiteColor,
        ),
        body: Column(
          children: [
            Expanded(
              flex: 3,
              child: Image.asset('images/oB03.png'),
            ),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Text(
                    "Get daily calorie target\nbased on your body weight",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontFamily: 'PoppinsMedium', fontSize: 19),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Set your target weight and select your\nmonthly schedule, "
                    "and we’ill do the rest",
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
          child: FloatingActionButton.extended(
            backgroundColor: StreetFoodColors.yellowColor,
            onPressed: () {
              Get.to(SignupScreen());
            },
            label: Text(
              "GET STARTED",
              style: TextStyle(
                  color: StreetFoodColors.blackColor,
                  fontFamily: 'PoppinsSemiBold',
                  fontSize: 15),
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}
