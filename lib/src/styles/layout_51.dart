import 'package:flutter/material.dart';

class Layout51 extends StatelessWidget {
  final double height = 36;
  final double width_1 = 48;
  final double width_2 = 76;
  final Color borderColor;

  const Layout51({super.key, required this.borderColor});

  Widget buildContainer(double width) {
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
          color: Colors.transparent),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildContainer(width_1),
              buildContainer(width_1),
              buildContainer(width_1),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildContainer(width_2),
              buildContainer(width_2),
            ],
          ),
        ],
      ),
    );
  }
}
