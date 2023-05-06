import 'package:flutter/material.dart';

class myTextField extends StatelessWidget {
  myTextField({
    super.key,
    this.suffixIcon,
    required this.hintText,
    this.isHidden,
  });

  String hintText;
  bool? isHidden;
  IconData? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 31,
      child: Material(
        elevation: 1.5,
        borderRadius: BorderRadius.circular(14),
        child: TextFormField(
          obscureText: isHidden ?? false,
          decoration: InputDecoration(
            suffixIcon: Icon(suffixIcon),
            hintText: hintText,
            hintStyle: TextStyle(
              color: Color(0xff000000),
              fontSize: 10,
              fontFamily: "PoppinsMedium",
            ),
            contentPadding: EdgeInsets.only(top: 10, left: 10),
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
            ),
          ),
        ),
      ),
    );
  }
}
