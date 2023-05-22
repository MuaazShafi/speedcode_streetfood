import 'package:flutter/material.dart';
import 'package:speedcode_streetfood/Screens/screen_login.dart';
import 'package:speedcode_streetfood/colors.dart';

import '../Widgets/textField.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool obscureText = true;

    return SafeArea(
      child: Scaffold(
        backgroundColor: StreetFoodColors.whiteColor,
        appBar: AppBar(
          backgroundColor: StreetFoodColors.whiteColor,
          elevation: 0,
          automaticallyImplyLeading: false,
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios,
              size: 18,
              color: StreetFoodColors.blackColor,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 130,
                width: double.maxFinite,
                child: Stack(
                  children: [
                    Positioned(
                      top: 30,
                      left: 45,
                      child: Container(
                        height: 83,
                        width: 83,
                        decoration: BoxDecoration(
                          color: StreetFoodColors.yellowColor,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 55,
                      left: 80,
                      child: Text(
                        "Create a New Account",
                        style: TextStyle(
                          fontFamily: 'PoppinsSemiBold',
                          fontSize: 21,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 70),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Create an account so you can see  our\nlatest Recipes",
                        style: TextStyle(
                          color: StreetFoodColors.greyColor,
                          fontFamily: 'PoppinsRegular',
                          fontSize: 12,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Name",
                        style: TextStyle(
                          color: StreetFoodColors.greyColor,
                          fontFamily: 'PoppinsRegular',
                          fontSize: 12,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      height: 31,
                      child: Material(
                        elevation: 1.5,
                        borderRadius: BorderRadius.circular(14),
                        child: MyTextField(
                          hintText: "abc@gmail.com",
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Email",
                        style: TextStyle(
                          color: StreetFoodColors.greyColor,
                          fontFamily: 'PoppinsRegular',
                          fontSize: 12,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      height: 31,
                      child: Material(
                        elevation: 1.5,
                        borderRadius: BorderRadius.circular(14),
                        child: MyTextField(
                          hintText: 'abc@gmail.com',
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Password",
                        style: TextStyle(
                          color: StreetFoodColors.greyColor,
                          fontFamily: 'PoppinsRegular',
                          fontSize: 12,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      height: 31,
                      child: Material(
                        elevation: 1.5,
                        borderRadius: BorderRadius.circular(14),
                        child: MyTextField(
                          hintText: "****",
                          showSuffixIcon: true,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Confirm Password",
                        style: TextStyle(
                          color: StreetFoodColors.greyColor,
                          fontFamily: 'PoppinsRegular',
                          fontSize: 12,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      height: 31,
                      child: Material(
                        elevation: 1.5,
                        borderRadius: BorderRadius.circular(14),
                        child: MyTextField(
                          hintText: "*****",
                          showSuffixIcon: true,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Material(
                      borderRadius: BorderRadius.circular(29),
                      elevation: 1.5,
                      child: Container(
                        height: 36,
                        width: 223,
                        decoration: BoxDecoration(
                          color: StreetFoodColors.yellowColor,
                          borderRadius: BorderRadius.circular(29),
                        ),
                        child: Center(
                          child: Text(
                            "SIGNUP",
                            style: TextStyle(
                              fontFamily: 'PoppinsSemiBold',
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Material(
                      borderRadius: BorderRadius.circular(29),
                      elevation: 1.5,
                      child: Container(
                        height: 36,
                        width: 223,
                        decoration: BoxDecoration(
                          color: StreetFoodColors.yellowColor,
                          borderRadius: BorderRadius.circular(29),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              height: 24,
                              width: 24,
                              child: Image.asset('images/google.png'),
                            ),
                            Text(
                              "Signup with Google",
                              style: TextStyle(
                                fontFamily: 'PoppinsSemiBold',
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    IntrinsicHeight(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Already have an account',
                            style: TextStyle(
                              fontFamily: 'PoppinsMedium',
                              fontSize: 12,
                            ),
                          ),
                          VerticalDivider(
                            indent: 4,
                            endIndent: 4,
                            thickness: 1,
                            color: StreetFoodColors.yellowColor,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LoginScreen()));
                            },
                            child: Text(
                              'LOGIN',
                              style: TextStyle(
                                color: StreetFoodColors.yellowColor,
                                fontFamily: 'PoppinsMedium',
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
