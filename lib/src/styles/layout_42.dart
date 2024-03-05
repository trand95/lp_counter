import 'package:flutter/material.dart';

class Layout42 extends StatelessWidget {
  final double height_1 = 80;
  final double height_2 = 37;
  final double width_1 = 40;
  final double width_2 = 70;
  final Color borderColor;
  const Layout42({super.key, required this.borderColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 95,
      width: 180,
      decoration: BoxDecoration(
          border:
              Border.all(color: borderColor, width: 3),
          borderRadius: BorderRadius.circular(4),
          color: Colors.black),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
                height: height_1,
                width: width_1,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4), color: Colors.grey),
              ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: height_2,
                width: width_2,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4), color: Colors.grey),
              ),
              Container(
                height: height_2,
                width: width_2,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4), color: Colors.grey),
              ),
            ],
          ),
         Container(
                height: height_1,
                width: width_1,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4), color: Colors.grey),
              ),
        ],
      ),
    );
  }
}
