// CustomTextField Class
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final double width;
  final String hintText;
  final bool obscureText;
  final Widget? suffixIcon;
  final TextInputType? keyboardType;

  const CustomTextField({
    Key? key,
    required this.width,
    required this.hintText,
    this.obscureText = false,
    this.suffixIcon,
    this.keyboardType,
    required TextStyle hintStyle,
    required TextStyle style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: BorderSide(color: Colors.orange, width: 2),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: BorderSide(color: Colors.orange, width: 2),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: BorderSide(color: Colors.deepOrange, width: 2),
          ),
          filled: true,
          fillColor: Colors.white,
          suffixIcon: suffixIcon,
        ),
        keyboardType: keyboardType,
      ),
    );
  }
}
