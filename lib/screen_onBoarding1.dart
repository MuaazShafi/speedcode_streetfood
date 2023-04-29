import 'package:flutter/material.dart';
import 'package:speedcode_streetfood/screen_onBoarding2.dart';

class OnBoarding1 extends StatelessWidget {
  const OnBoarding1({Key? key}) : super(key: key);

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
              child: Image.asset('images/oB01.png'),
            ),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Text(
                    "Get all the healthy recipes\nthat you need",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontFamily: 'PoppinsMedium', fontSize: 19),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Whether you are losing or gaining. we\nhave all the "
                    "recipes you’ll need.",
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
                  MaterialPageRoute(builder: (context) => OnBoarding2()));
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
