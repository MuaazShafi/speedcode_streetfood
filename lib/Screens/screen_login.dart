import 'package:flutter/material.dart';
import 'package:speedcode_streetfood/Screens/screen_forgotPassword.dart';
import 'package:speedcode_streetfood/Screens/screen_signup.dart';
import 'package:speedcode_streetfood/colors.dart';

import '../Widgets/textField.dart';
class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                        "Welcome Back",
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
                        "I am very happy to see you. You can continue to login "
                        "for latest recipe",
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
                      alignment: Alignment.centerRight,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ForgotScreen()));
                        },
                        child: Text(
                          'Forget Password',
                          style: TextStyle(
                              color: StreetFoodColors.greyColor,
                              fontFamily: 'PoppinsMedium',
                              fontSize: 10),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Material(
                      borderRadius: BorderRadius.circular(29),
                      elevation: 1.5,
                      child: Container(
                        height: 36,
                        width: 148,
                        decoration: BoxDecoration(
                          color: StreetFoodColors.yellowColor,
                          borderRadius: BorderRadius.circular(29),
                        ),
                        child: Center(
                          child: Text(
                            "LOGIN",
                            style: TextStyle(
                              fontFamily: 'PoppinsSemiBold',
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 220),
                      child: IntrinsicHeight(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Don’t have an account',
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
                                        builder: (context) => SignupScreen()));
                              },
                              child: Text(
                                'SIGNUP',
                                style: TextStyle(
                                  color: StreetFoodColors.yellowColor,
                                  fontFamily: 'PoppinsMedium',
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ],
                        ),
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
