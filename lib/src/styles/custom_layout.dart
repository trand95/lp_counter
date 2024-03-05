import 'package:flutter/material.dart';
import 'package:lp_counter/src/styles/layout_41.dart';
import 'package:lp_counter/src/styles/layout_42.dart';


class CustomLayout extends StatelessWidget {
  final int index;
  final Color borderColor_;

  const CustomLayout({required this.index, super.key, required this.borderColor_});

  @override
  Widget build(BuildContext context) {
    
    switch (index) {
      case 0:
        return  Layout41(borderColor: borderColor_,);
      case 1:
        return Layout42(borderColor: borderColor_);
      // Add more cases for additional layouts
      default:
        return Container(); // Handle default case or return a default widget
    }
  }
}



