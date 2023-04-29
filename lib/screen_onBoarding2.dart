import 'package:flutter/material.dart';
import 'package:speedcode_streetfood/screen_onBoarding3.dart';

class OnBoarding2 extends StatelessWidget {
  const OnBoarding2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffffffff),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color(0xffffffff),
          actions: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Text(
                  "Skip",
                  style: TextStyle(
                      color: Color(0xff989898),
                      fontFamily: 'PoppinsMedium',
                      fontSize: 15),
                ),
              ),
            )
          ],
        ),
        body: Column(
          children: [
            Expanded(
              flex: 3,
              child: Image.asset('images/oB02.png'),
            ),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Text(
                    "Get the exact nutrition\nvalue of everything you eat",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontFamily: 'PoppinsMedium', fontSize: 19),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "We are updating our food database every\nminute to help "
                    "you track your calorie",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xffACACAC),
                      fontFamily: 'PoppinsRegular',
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: FloatingActionButton(
            backgroundColor: Color(0xffF7BB0E),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => OnBoarding3()));
            },
            child: Icon(
              Icons.arrow_forward,
              color: Color(0xff000000),
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}
