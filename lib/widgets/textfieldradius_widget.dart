import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TextFieldRadius extends StatelessWidget {
  TextFieldRadius({
    this.hintText = "",
    this.backgroundColor = const Color(0xFFEDF6FF),
    this.padding = const EdgeInsets.symmetric(horizontal: 0),
    this.margin = const EdgeInsets.symmetric(horizontal: 0),
    this.radius = 13,
    this.type = TextInputType.text,
    this.obscureText = false
  });

  final String hintText;
  final Color backgroundColor;
  final EdgeInsets padding;
  final EdgeInsets margin;
  final double radius;
  final TextInputType type;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: this.padding,
      margin: this.margin,
      decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.all(Radius.circular(this.radius))
      ),
      child: TextField(
        obscureText: obscureText,
        keyboardType: type,
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: this.hintText
        ),
      ),
    );
  }
}