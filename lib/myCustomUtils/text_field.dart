import 'package:flutter/material.dart';

import 'colors.dart';

class MyTextField extends StatefulWidget {
  final String hintText;
  final bool? obscureText;
  final bool showSuffixIcon;
  final TextInputType? keyboardType;
  final Color? boarderColor;

  const MyTextField({
    Key? key,
    required this.hintText,
    this.obscureText,
    this.showSuffixIcon = false,
    this.keyboardType,
    this.boarderColor,
  }) : super(key: key);

  @override
  _MyTextFieldState createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  late bool _obscured;

  @override
  void initState() {
    super.initState();
    _obscured = widget.obscureText ?? false;
  }

  void _toggleObscured() {
    setState(() {
      _obscured = !_obscured;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: widget.keyboardType,
      obscureText: _obscured ?? false,
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.never,
        //Hides label on focus or if filled
        hintText: widget.hintText,
        hintStyle: TextStyle(
          color: StreetFoodColors.blackColor,
          fontSize: 10,
          fontFamily: "PoppinsMedium",
        ),
        filled: true,
        // Needed for adding a fill color
        fillColor: StreetFoodColors.whiteColor,
        isDense: false,
        // Reduces height a bit
        contentPadding: EdgeInsets.only(top: 10, left: 10),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(
            color: widget.boarderColor ?? StreetFoodColors.yellowColor,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(
            color: widget.boarderColor ?? StreetFoodColors.yellowColor,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(
            color: widget.boarderColor ?? StreetFoodColors.yellowColor,
          ),
        ),
        suffixIcon: widget.showSuffixIcon
            ? Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 4, 0),
                child: GestureDetector(
                  onTap: _toggleObscured,
                  child: Icon(
                    _obscured
                        ? Icons.visibility_outlined
                        : Icons.visibility_off_outlined,
                    color: StreetFoodColors.greyColor,
                    size: 20,
                  ),
                ),
              )
            : null,
      ),
    );
  }
}
