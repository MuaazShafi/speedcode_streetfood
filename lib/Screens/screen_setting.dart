import 'package:flutter/material.dart';
import 'package:speedcode_streetfood/Screens/screen_notification_setting.dart';
import 'package:get/get.dart';
import '../myCustomUtils/colors.dart';

class Setting extends StatelessWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Setting",
            style: TextStyle(
              color: StreetFoodColors.blackColor,
              fontFamily: 'PoppinsMedium',
              fontSize: 13,
            ),
          ),
          centerTitle: true,
          elevation: 0,
          backgroundColor: StreetFoodColors.whiteColor,
          leading: GestureDetector(
            onTap: (){
              Get.back();
            },
            child: Icon(
              Icons.arrow_back_ios,
              color: StreetFoodColors.blackColor,
            ),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  Get.to(NotificationSetting());
                },
                child: Material(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                  elevation: 1.5,
                  child: Container(
                    height: 42,
                    width: 272,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, right: 15),
                      child: Row(
                        children: [
                          Text('Notification'),
                          Spacer(),
                          Icon(
                            Icons.arrow_forward_ios_sharp,
                            color: StreetFoodColors.yellowColor,
                            size: 15,
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
    );
  }
}