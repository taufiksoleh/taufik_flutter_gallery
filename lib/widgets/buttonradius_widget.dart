import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ButtonRadius extends StatelessWidget {
  ButtonRadius({
    this.padding = const EdgeInsets.symmetric(vertical: 16),
    this.buttonText = "BUTTON",
    this.color = const Color(0xFF0090F2),
    this.onTap,
    this.textColor = Colors.white,
    this.margin = const EdgeInsets.symmetric(vertical: 16),
    this.radius = 16,
    this.fontSize = 16,
    this.icon
  });

  final EdgeInsets padding;
  final String buttonText;
  final Color color;
  final Function() onTap;
  final Color textColor;
  final EdgeInsets margin;
  final double radius;
  final double fontSize;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      padding: this.padding,
        minWidth: double.infinity,
        shape: RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(this.radius),
        ),
        child: this.icon == null ? RaisedButton(
          onPressed: onTap,
          child: Text(this.buttonText, style: TextStyle(fontSize: this.fontSize)),
          color: this.color,
          textColor: this.textColor,
        ) : RaisedButton.icon(
          onPressed: onTap,
          icon: icon,
          label: Text(this.buttonText, style: TextStyle(fontSize: this.fontSize)),
          color: this.color,
          textColor: this.textColor,
        )
    );
  }
}