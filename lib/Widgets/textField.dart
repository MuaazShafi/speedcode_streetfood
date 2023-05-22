import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
  final String hintText;
  final bool obscureText;
  final bool showSuffixIcon;
  final TextInputType? keyboardType;

  const MyTextField({
    Key? key,
    required this.hintText,
    this.obscureText = false,
    this.showSuffixIcon = false,
    this.keyboardType,
  }) : super(key: key);

  @override
  _MyTextFieldState createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  late bool _obscured;

  @override
  void initState() {
    super.initState();
    _obscured = widget.obscureText;
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
      obscureText: _obscured,
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.never,
        //Hides label on focus or if filled
        hintText: widget.hintText,
        hintStyle: TextStyle(
          color: Color(0xff000000),
          fontSize: 10,
          fontFamily: "PoppinsMedium",
        ),
        filled: true,
        // Needed for adding a fill color
        fillColor: Color(0xffffffff),
        isDense: false,
        // Reduces height a bit
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
        suffixIcon: widget.showSuffixIcon
            ? Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 4, 0),
                child: GestureDetector(
                  onTap: _toggleObscured,
                  child: Icon(
                    _obscured
                        ? Icons.visibility_outlined
                        : Icons.visibility_off_outlined,
                    color: Color(0xff727272),
                    size: 20,
                  ),
                ),
              )
            : null,
      ),
    );
  }
}
