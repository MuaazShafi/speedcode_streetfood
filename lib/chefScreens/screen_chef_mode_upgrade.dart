import 'package:flutter/material.dart';
import 'package:speedcode_streetfood/myCustomUtils/colors.dart';
import 'package:get/get.dart';

import '../myCustomUtils/text_field.dart';

class UpgradeChefModeScreen extends StatefulWidget {
  const UpgradeChefModeScreen({Key? key}) : super(key: key);

  @override
  State<UpgradeChefModeScreen> createState() => _UpgradeChefModeScreenState();
}

class _UpgradeChefModeScreenState extends State<UpgradeChefModeScreen> {
  String userType = dropDownList.first;
  static const List<String> dropDownList = <String>[
    'Enter your Specialization',
    'Choose User',
    'Admin',
    'Teacher',
    'Student',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: StreetFoodColors.whiteColor,
          elevation: 0,
          leading: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Icon(
              Icons.arrow_back_ios,
              size: 22,
              color: StreetFoodColors.blackColor,
            ),
          ),
          title: Text(
            "Profile",
            style: TextStyle(
              color: StreetFoodColors.blackColor,
              fontSize: 13,
              fontFamily: 'PoppinsMedium',
            ),
          ),
          centerTitle: true,
        ),
        body: Stack(
          children: [
            Positioned(
              top: 0,
              child: Container(
                width: 400,
                height: 150,
                color: StreetFoodColors.whiteColor,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Column(
                      children: [
                        Text(
                          'John',
                          style: TextStyle(
                              fontFamily: 'PoppinsSemiBold', fontSize: 16),
                        ),
                        Text(
                          'abc@gmail.com',
                          style: TextStyle(
                            color: StreetFoodColors.greyColor,
                            fontFamily: 'PoppinsMedium',
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 150,
              child: Container(
                width: 400,
                height: 550,
                color: StreetFoodColors.greyColor.withOpacity(0.15),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Material(
                        elevation: 1,
                        borderRadius: BorderRadius.circular(13),
                        child: Container(
                          height: 350,
                          width: 250,
                          decoration: BoxDecoration(
                              color:
                                  StreetFoodColors.whiteColor.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(13)),
                          child: Padding(
                            padding: const EdgeInsets.all(15),
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
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
                                      elevation: 0,
                                      borderRadius: BorderRadius.circular(14),
                                      child: MyTextField(
                                        boarderColor:
                                            StreetFoodColors.greyColor,
                                        hintText: "e.g, John",
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
                                      elevation: 0,
                                      borderRadius: BorderRadius.circular(14),
                                      child: MyTextField(
                                        boarderColor:
                                            StreetFoodColors.greyColor,
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
                                      "Specialization",
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
                                  Container(
                                    height: 31,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(14),
                                      border: Border.all(
                                          color: StreetFoodColors.greyColor),
                                    ),
                                    child: Expanded(
                                      child: DropdownButtonFormField<String>(
                                        decoration: InputDecoration.collapsed(
                                          hintText:
                                              'Enter Your Specialization',
                                        ),
                                        value: userType,
                                        onChanged: (String? value) {
                                          setState(() {
                                            userType = value!;
                                          });
                                        },
                                        items: dropDownList
                                            .map<DropdownMenuItem<String>>(
                                              (String value) =>
                                                  DropdownMenuItem<String>(
                                                value: value,
                                                child: Text(
                                                  value,
                                                  style: TextStyle(
                                                    color: StreetFoodColors
                                                        .yellowColor,
                                                    fontSize: 8,
                                                    fontFamily:
                                                        'PoppinsMedium',
                                                  ),
                                                ),
                                              ),
                                            )
                                            .toList(),
                                        dropdownColor: StreetFoodColors.darkGreyColor,
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(7),
                                          bottomRight: Radius.circular(7),
                                          bottomLeft: Radius.circular(7)
                                        ),
                                        iconEnabledColor: StreetFoodColors.yellowColor,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "Experience",
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
                                      elevation: 0,
                                      borderRadius: BorderRadius.circular(14),
                                      child: MyTextField(
                                        keyboardType: TextInputType.number,
                                        boarderColor:
                                            StreetFoodColors.greyColor,
                                        hintText: "2 years",
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "Recently Work ",
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
                                      elevation: 0,
                                      borderRadius: BorderRadius.circular(14),
                                      child: MyTextField(
                                        boarderColor:
                                            StreetFoodColors.greyColor,
                                        hintText: "Enter hotel name",
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 34,
                        width: 148,
                        decoration: BoxDecoration(
                          color: StreetFoodColors.blackColor,
                          borderRadius: BorderRadius.circular(37),
                        ),
                        child: Center(
                          child: Text(
                            'UPDATE',
                            style: TextStyle(
                                color: StreetFoodColors.yellowColor,
                                fontSize: 11,
                                fontFamily: 'PoppinsBold'),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 90,
              left: 140,
              child: CircleAvatar(
                radius: 59,
                backgroundColor: StreetFoodColors.yellowColor,
                child: CircleAvatar(
                  radius: 56,
                  backgroundImage: AssetImage('images/profile.jpg'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
