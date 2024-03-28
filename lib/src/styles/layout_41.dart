import 'package:flutter/material.dart';

class Layout41 extends StatelessWidget {
  final double height = 36;
  final double width = 77;
  final Color borderColor;

  const Layout41({super.key, required this.borderColor});

  Widget buildContainer(double height) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4), color: Colors.grey),
    );
  }

  Row buildRow() {
    return Row(
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
      width: 180,
      decoration: BoxDecoration(
          border: Border.all(color: borderColor, width: 3),
          borderRadius: BorderRadius.circular(4),
          color: Colors.transparent),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buildRow(),
          buildRow(),
        ],
      ),
    );
  }
}
