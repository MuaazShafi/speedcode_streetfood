import 'dart:async';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:speedcode_streetfood/chefScreens/screen_chef_mode_upgrade.dart';
import 'package:speedcode_streetfood/myCustomUtils/colors.dart';

class SwitchingScreen extends StatefulWidget {
  const SwitchingScreen({Key? key}) : super(key: key);

  @override
  State<SwitchingScreen> createState() => _SwitchingScreenState();
}

class _SwitchingScreenState extends State<SwitchingScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
      Duration(seconds: 5),
      () {
        Get.off(UpgradeChefModeScreen());
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: StreetFoodColors.whiteColor,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage('images/waiting.gif'),
            ),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: 'Please wait we are Switching ',
                style: TextStyle(
                  fontFamily: 'PoppinsBold',
                  fontSize: 15,
                  color: StreetFoodColors.chefSplashBackground,
                ),
                children: [
                  TextSpan(
                    text: '\nyou to',
                  ),
                  TextSpan(
                    text: ' chef Mode',
                    style: TextStyle(
                      color: StreetFoodColors.yellowColor,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
