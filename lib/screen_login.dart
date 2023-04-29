import 'package:flutter/material.dart';
import 'package:speedcode_streetfood/screen_forgotPassword.dart';
import 'package:speedcode_streetfood/screen_signup.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

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
                    SizedBox(
                      height: 31,
                      child: Material(
                        elevation: 1.5,
                        borderRadius: BorderRadius.circular(14),
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              hintText: "abc@gmail.com",
                              hintStyle: TextStyle(
                                  color: Color(0xff000000),
                                  fontSize: 10,
                                  fontFamily: "PoppinsMedium"),
                              contentPadding:
                                  EdgeInsets.only(top: 10, left: 10),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(14),
                                borderSide: BorderSide(
                                  color: Color(0xffF7BB0E),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(14),
                                borderSide: BorderSide(
                                  color: Color(0xffF7BB0E),
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(14),
                                borderSide: BorderSide(
                                  color: Color(0xffF7BB0E),
                                ),
                              )),
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
                          color: Color(0xffADAAAA),
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
                        child: TextFormField(
                          obscureText: true,
                          obscuringCharacter: "*",
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              suffixIcon: Icon(
                                Icons.visibility_outlined,
                                size: 18,
                                color: Color(0xff727272),
                              ),
                              hintText: "***********",
                              hintStyle: TextStyle(
                                  color: Color(0xff000000),
                                  fontSize: 10,
                                  fontFamily: "PoppinsMedium"),
                              contentPadding:
                                  EdgeInsets.only(top: 10, left: 10),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(14),
                                borderSide: BorderSide(
                                  color: Color(0xffF7BB0E),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(14),
                                borderSide: BorderSide(
                                  color: Color(0xffF7BB0E),
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(14),
                                borderSide: BorderSide(
                                  color: Color(0xffF7BB0E),
                                ),
                              )),
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
                              color: Color(0xff969494),
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
                          color: Color(0xffF7BB0E),
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
                              color: Color(0xffF7BB0E),
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
                                  color: Color(0xffF7BB0E),
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
