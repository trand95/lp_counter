import 'package:flutter/material.dart';

class AppButtons extends StatelessWidget {
  final Color color;
  final Color backgroundColor;
  final double height;
  final double width;
  final Color borderColor;
  final String? text;
  final IconData? icon;
  final bool isIcon;

  const AppButtons(
      {super.key,
      this.isIcon = false,
      this.text,
      this.icon,
      required this.height,
      required this.width,
      required this.color,
      required this.backgroundColor,
      required this.borderColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          border: Border.all(
            color: borderColor,
            width: 3.0,
          ),
          borderRadius: BorderRadius.circular(15),
          color: backgroundColor),
      child: isIcon == false
          ? Center(
              child: Text(text!,
                  style: TextStyle(
                      color: color, fontSize: 25, fontWeight: FontWeight.bold)))
          : Icon(icon, color: color),
    );
  }
}
