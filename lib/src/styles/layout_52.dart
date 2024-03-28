import 'package:flutter/material.dart';

class Layout52 extends StatelessWidget {
  final double height = 36;
  final double height_2 = 78;
  final double width = 44;
  final Color borderColor;

  const Layout52({super.key, required this.borderColor});

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
        buildContainer(height),
        buildContainer(height),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 95,
      width: 160,
      decoration: BoxDecoration(
          border: Border.all(color: borderColor, width: 3),
          borderRadius: BorderRadius.circular(4),
          color: Colors.transparent),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buildColumn(),
          buildColumn(),
          buildContainer(height_2),
        ],
      ),
    );
  }
}
