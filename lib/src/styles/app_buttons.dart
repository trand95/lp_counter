import 'package:flutter/material.dart';

class AppButtons extends StatelessWidget {
  final Color color;
  final Color backgroundColor;
  double height;
  double width;
  final Color borderColor;
  String? text;
  IconData? icon;
  bool isIcon;

  AppButtons({super.key, 
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
                      width: 5.0,),
                    borderRadius: BorderRadius.circular(15),
                    color: backgroundColor),
                  child: isIcon == false ? Center(child: Text(text!, style: TextStyle(color: color, fontSize: 30, fontWeight: FontWeight.bold))) : Icon(icon, color:color),
                  );
  }
}