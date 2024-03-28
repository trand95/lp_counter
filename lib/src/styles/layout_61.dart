import 'package:flutter/material.dart';

class Layout61 extends StatelessWidget {
  final double height = 36;
  final double width = 48;
  final Color borderColor;

  const Layout61({super.key, required this.borderColor});

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
              Container(
                height: height,
                width: width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4), color: Colors.grey),
              ),
              Container(
                height: height,
                width: width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4), color: Colors.grey),
              ),
              Container(
                height: height,
                width: width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4), color: Colors.grey),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: height,
                width: width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4), color: Colors.grey),
              ),
              Container(
                height: height,
                width: width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4), color: Colors.grey),
              ),
              Container(
                height: height,
                width: width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4), color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
