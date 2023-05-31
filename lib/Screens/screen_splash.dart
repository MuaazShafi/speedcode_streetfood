import 'dart:async';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:speedcode_streetfood/Screens/screen_onBoarding1.dart';
import 'package:speedcode_streetfood/myCustomUtils/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
      Duration(seconds: 3),
      () {
        Get.to(OnBoarding1());
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: StreetFoodColors.splashBackground,
        body: Center(
          child: Image(
            height: 213,
            width: 299,
            image: AssetImage('images/splash.png'),
          ),
        ),
      ),
    );
  }
}
