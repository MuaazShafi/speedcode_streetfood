import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:speedcode_streetfood/userScreens/screen_signup.dart';
import '../myCustomUtils/colors.dart';

class Onbording extends StatefulWidget {
  static const List<String> images = [
    "images/oB01.png",
    "images/oB02.png",
    "images/oB03.png",
  ];
  static const List<String> heading = [
    'Get all the healthy recipes\nthat you need',
    'Get the exact nutrition\nvalue of everything you eat',
    'Get daily calorie target\nbased on your body weight',
  ];
  static const List<String> subHeading = [
    "Whether you are losing or gaining. we\nhave all the recipes you’ll need.",
    'We are updating our food database\n every minute to help you track your ',
    'Set your target weight and select your\nmonthly schedule, and we’ill do the rest',
  ];

  @override
  _OnbordingState createState() => _OnbordingState();
}

class _OnbordingState extends State<Onbording> {
  int currentIndex = 0;
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: StreetFoodColors.whiteColor,
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 15,right: 15),
            child: GestureDetector(
              onTap: (){
                Get.off(SignupScreen());
              },
              child: Text("Skip",
              style: TextStyle(
                color: StreetFoodColors.greyColor,
                fontSize: 15,
                fontFamily: 'PoppinsMedium'
              ),),
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          PageView.builder(
            controller: _controller,
            itemCount: Onbording.images.length,
            onPageChanged: (int index) {
              setState(() {
                currentIndex = index;
              });
            },
            itemBuilder: (_, i) {
              return Padding(
                padding: const EdgeInsets.all(40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image(
                      height: MediaQuery.of(context).size.height*0.35,
                      width: MediaQuery.of(context).size.height*0.75,
                      image: AssetImage(
                        Onbording.images[i],
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          Onbording.heading[i],
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'PoppinsMedium',
                            fontSize: 19,
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          Onbording.subHeading[i],
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: StreetFoodColors.greyColor,
                            fontFamily: 'PoppinsRegular',
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(),
                  ],
                ),
              );
            },
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.50,
            left: MediaQuery.of(context).size.width * 0.42,
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  Onbording.images.length,
                  (index) => buildDot(index, context),
                ),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * .77,
            left: currentIndex == Onbording.images.length - 1
                ? MediaQuery.of(context).size.width * .31
                : MediaQuery.of(context).size.width * .42,
            child: GestureDetector(
              onTap: () {
                setState(() {

                });
                if (currentIndex == Onbording.images.length - 1) {
                  Get.off(SignupScreen());
                }
                _controller.nextPage(
                  duration: Duration(milliseconds: 100),
                  curve: Curves.bounceIn,
                );
              },
              child: Container(
                height: 50,
                width: currentIndex == Onbording.images.length - 1 ? 148 : 50,
                decoration: BoxDecoration(
                    color: StreetFoodColors.yellowColor,
                    borderRadius: BorderRadius.circular(29)),
                child: Center(
                  child: currentIndex == Onbording.images.length - 1
                      ? Text(
                          "GET STARTED",
                          style: TextStyle(
                              fontFamily: 'PoppinsSemiBold',
                              fontSize: 15,
                              color: StreetFoodColors.blackColor,),
                        )
                      : Icon(
                          Icons.arrow_forward,
                          color: StreetFoodColors.blackColor,
                        ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 5,
      width: currentIndex == index ? 18 : 5,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: currentIndex == index
              ? StreetFoodColors.yellowColor
              : StreetFoodColors.whiteColor,
          border: Border.all(color: StreetFoodColors.yellowColor)),
    );
  }
}
