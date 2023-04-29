import 'package:flutter/material.dart';

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
                color: Color(0xff000000),
                fontFamily: 'PoppinsMedium',
                fontSize: 13),
          ),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Color(0xffffffff),
          automaticallyImplyLeading: false,
          leading: GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios,
              size: 18,
              color: Color(0xff000000),
            ),
          ),
        ),
        backgroundColor: Color(0xffffffff),
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
                          color: Color(0xff7D7D7D),
                          fontFamily: 'PoppinsMedium',
                          fontSize: 13),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: SizedBox(
                        height: 31,
                        child: TextFormField(
                          decoration: InputDecoration(
                              suffixIcon: Icon(
                                Icons.circle_outlined,
                                size: 18,
                              ),
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
                    )
                  ],
                ),
              ),
              Expanded(
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
              SizedBox(height: 100,)
            ],
          ),
        ),
      ),
    );
  }
}
