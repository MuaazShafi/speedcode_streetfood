import 'package:flutter/material.dart';
import 'package:speedcode_streetfood/colors.dart';
import 'package:speedcode_streetfood/layouts/layout_home.dart';

import '../Widgets/Navigations.dart';

class ForgotScreen extends StatelessWidget {
  const ForgotScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Forget Password",
            style: TextStyle(
              color: StreetFoodColors.blackColor,
              fontFamily: 'PoppinsMedium',
              fontSize: 13,
            ),
          ),
          centerTitle: true,
          elevation: 0,
          backgroundColor: StreetFoodColors.whiteColor,
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
        backgroundColor: StreetFoodColors.whiteColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 80),
          child: Column(
            children: [
              Expanded(
                flex: 8,
                child: Image.asset('images/fP.png'),
              ),
              Expanded(
                flex: 5,
                child: Column(
                  children: [
                    Text(
                      "Select email should we use to reset\npassword",
                      style: TextStyle(
                        color: StreetFoodColors.greyColor,
                        fontFamily: 'PoppinsMedium',
                        fontSize: 13,
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: SizedBox(
                        height: 31,
                        child: Material(
                          elevation: 1.5,
                          borderRadius: BorderRadius.circular(14),
                          child: TextFormField(
                            obscureText: false,
                            decoration: InputDecoration(
                              hintText: "abc@gmail.com",
                              suffixIcon: Icon(Icons.circle_outlined),
                              hintStyle: TextStyle(
                                color: StreetFoodColors.blackColor,
                                fontSize: 10,
                                fontFamily: "PoppinsMedium",
                              ),
                              contentPadding:
                                  EdgeInsets.only(top: 10, left: 10),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(14),
                                borderSide: BorderSide(
                                  color: StreetFoodColors.yellowColor,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(14),
                                borderSide: BorderSide(
                                  color: StreetFoodColors.yellowColor,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(14),
                                borderSide: BorderSide(
                                  color: StreetFoodColors.yellowColor,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Navigation()));
                  },
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
              ),
              SizedBox(
                height: 100,
              )
            ],
          ),
        ),
      ),
    );
  }
}
