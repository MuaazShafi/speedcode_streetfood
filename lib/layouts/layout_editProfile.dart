import 'package:flutter/material.dart';

import '../myCustomUtils/colors.dart';

class EditProfileLayout extends StatelessWidget {
  const EditProfileLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: StreetFoodColors.whiteColor,
          automaticallyImplyLeading: false,
          elevation: 0,
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios,
              color: StreetFoodColors.blackColor,
              size: 18,
            ),
          ),
          title: Text(
            'Profile',
            style: TextStyle(
              color: StreetFoodColors.blackColor,
              fontFamily: 'PoppinsMedium',
              fontSize: 13,
            ),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 60),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  'ABDUL HANNAN',
                  style: TextStyle(
                      color: StreetFoodColors.blackColor,
                      fontSize: 16,
                      fontFamily: 'PoppinsSemiBold'),
                ),
                Text(
                  'abc@gmail.com',
                  style: TextStyle(
                    color: StreetFoodColors.greyColor,
                    fontSize: 12,
                    fontFamily: 'PoppinsMedium',
                  ),
                ),
                SizedBox(height: 30,),
                CircleAvatar(
                  radius: 58,
                  backgroundColor: StreetFoodColors.yellowColor,
                  child: CircleAvatar(
                    radius: 56,
                    backgroundImage: AssetImage('images/profile.jpg'),
                  ),
                ),
                SizedBox(height: 20,),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Name',
                    style: TextStyle(
                      color: StreetFoodColors.greyColor,
                      fontSize: 10,
                      fontFamily: 'PoppinsRegular',
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                SizedBox(
                  height: 31,
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'ABDUL HANNAN',
                      hintStyle: TextStyle(
                          color: StreetFoodColors.blackColor,
                          fontSize: 10,
                          fontFamily: 'PoppinsMedium'),
                      suffix: Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Container(
                          height: 21,
                          width: 21,
                          decoration: BoxDecoration(
                            color: StreetFoodColors.yellowColor,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.edit,
                            color: StreetFoodColors.whiteColor,
                            size: 15,
                          ),
                        ),
                      ),
                      contentPadding:
                          EdgeInsets.only(top: 10, left: 10, right: 10),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: StreetFoodColors.greyColor,
                          ),
                          borderRadius: BorderRadius.circular(14)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: StreetFoodColors.greyColor,
                          ),
                          borderRadius: BorderRadius.circular(14)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: StreetFoodColors.greyColor,
                          ),
                          borderRadius: BorderRadius.circular(14)),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Email',
                    style: TextStyle(
                      color: StreetFoodColors.greyColor,
                      fontSize: 10,
                      fontFamily: 'PoppinsRegular',
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                SizedBox(
                  height: 31,
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'abc@gmail.com',
                      hintStyle: TextStyle(
                          color: StreetFoodColors.blackColor,
                          fontSize: 10,
                          fontFamily: 'PoppinsMedium'),
                      suffix: Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Container(
                          height: 21,
                          width: 21,
                          decoration: BoxDecoration(
                            color: StreetFoodColors.yellowColor,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.edit,
                            color: StreetFoodColors.whiteColor,
                            size: 15,
                          ),
                        ),
                      ),
                      contentPadding:
                          EdgeInsets.only(top: 10, left: 10, right: 10),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: StreetFoodColors.greyColor,
                          ),
                          borderRadius: BorderRadius.circular(14)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: StreetFoodColors.greyColor,
                          ),
                          borderRadius: BorderRadius.circular(14)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: StreetFoodColors.greyColor,
                          ),
                          borderRadius: BorderRadius.circular(14)),
                    ),
                  ),
                ),
                SizedBox(height: 60,),
                Container(
                  height: 34,
                  width: 146,
                  decoration: BoxDecoration(
                      color: StreetFoodColors.blackColor,
                      borderRadius: BorderRadius.circular(37)),
                  child: Center(
                    child: Text(
                      'UPDATE',
                      style: TextStyle(
                        color: StreetFoodColors.yellowColor,
                        fontSize: 11,
                        fontFamily: 'PoppinsSemiBold'
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
