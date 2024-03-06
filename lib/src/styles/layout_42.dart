import 'package:flutter/material.dart';

class Layout42 extends StatelessWidget {
  final double height_1 = 80;
  final double height_2 = 37;
  final double width_1 = 40;
  final double width_2 = 70;
  final Color borderColor;

  const Layout42({super.key, required this.borderColor});

  Widget buildContainer(double height, double width) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4), color: Colors.grey),
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
          buildContainer(height_1, width_1),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildContainer(height_2, width_2),
              buildContainer(height_2, width_2),
            ],
          ),
          buildContainer(height_1, width_1),
        ],
      ),
    );
  }
}
