import 'package:flutter/material.dart';

class Layout62 extends StatelessWidget {
  final double height_1 = 76;
  final double height_2 = 35;
  final double width = 36;
  final Color borderColor;

  const Layout62({super.key, required this.borderColor});

  Widget buildContainer(double height) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4), color: Colors.grey),
    );
  }

  Column buildColumn() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        buildContainer(height_2),
        buildContainer(height_2),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 95,
      width: 180,
      decoration: BoxDecoration(
          border: Border.all(color: borderColor, width: 3),
          borderRadius: BorderRadius.circular(4),
          color: Colors.black),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buildContainer(height_1),
          buildColumn(),
          buildColumn(),
          buildContainer(height_1),
        ],
      ),
    );
  }
}
