import 'package:flutter/material.dart';
import 'package:speedcode_streetfood/screen_login.dart';
import 'package:speedcode_streetfood/widgets/myTextField.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffffffff),
        appBar: AppBar(
          backgroundColor: Color(0xffffffff),
          elevation: 0,
          automaticallyImplyLeading: false,
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios,
              size: 18,
              color: Color(0xff000000),
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
                            color: Color(0xffF7BB0E), shape: BoxShape.circle),
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
                          color: Color(0xffADAAAA),
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
                          color: Color(0xffADAAAA),
                          fontFamily: 'PoppinsRegular',
                          fontSize: 12,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    myTextField(
                      hintText: 'Muaaz',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Email",
                        style: TextStyle(
                          color: Color(0xffADAAAA),
                          fontFamily: 'PoppinsRegular',
                          fontSize: 12,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    myTextField(
                      hintText: 'abc@gmail.com',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Password",
                        style: TextStyle(
                          color: Color(0xffADAAAA),
                          fontFamily: 'PoppinsRegular',
                          fontSize: 12,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    myTextField(
                      hintText: '*****',
                      isHidden: true,
                      suffixIcon: Icons.visibility_outlined,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Confirm Password",
                        style: TextStyle(
                          color: Color(0xffADAAAA),
                          fontFamily: 'PoppinsRegular',
                          fontSize: 12,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    myTextField(
                      hintText: '*****',
                      isHidden: true,
                      suffixIcon: Icons.visibility_outlined,
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
                          color: Color(0xffF7BB0E),
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
                          color: Color(0xffF7BB0E),
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
                            color: Color(0xffF7BB0E),
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
                                color: Color(0xffF7BB0E),
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
