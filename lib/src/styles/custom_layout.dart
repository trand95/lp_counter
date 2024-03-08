import 'package:flutter/material.dart';
import 'package:lp_counter/src/styles/layout_41.dart';
import 'package:lp_counter/src/styles/layout_42.dart';
import 'package:lp_counter/src/styles/layout_51.dart';
import 'package:lp_counter/src/styles/layout_52.dart';
import 'package:lp_counter/src/styles/layout_61.dart';
import 'package:lp_counter/src/styles/layout_62.dart';

class CustomLayout extends StatelessWidget {
  final int index;
  final int selectedPlayer;
  final Color borderColor;

  const CustomLayout(
      {required this.index,
      super.key,
      required this.borderColor,
      required this.selectedPlayer});

  @override
  Widget build(BuildContext context) {
    switch (selectedPlayer) {
      case 3:
        if (index == 0) {
          return Layout41(borderColor: borderColor);
        } else if (index == 1) {
          return Layout42(borderColor: borderColor);
        }
        break;
      case 4:
        if (index == 0) {
          return Layout51(borderColor: borderColor);
        } else if (index == 1) {
          return Layout52(borderColor: borderColor);
        }
        break;
      case 5:
        if (index == 0) {
          return Layout61(borderColor: borderColor);
        } else if (index == 1) {
          return Layout62(borderColor: borderColor);
        }
        break;
      default:
        return Container(); // Handle default case or return a default widget
    }
    return Container();
  }
}
