import 'package:flutter/material.dart';

class ButtonText extends StatelessWidget {
  final String text;
  double size;
  final Color color;
  ButtonText({super.key, required this.size, required this.text, required this.color});


  @override
  Widget build(BuildContext context) {
    return  Text(
                text,
                style: TextStyle(
                  color: color,
                  fontWeight: FontWeight.bold,
                  fontSize: size,
                ),
              );
  }
}