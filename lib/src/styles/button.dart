import 'package:flutter/material.dart';
import 'package:lp_counter/src/styles/color.dart';

final ButtonStyle buttonStart = ElevatedButton.styleFrom(
  minimumSize: const Size(250, 50),
  backgroundColor: orange,
  elevation: 0,
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(10),
    ),
  ),
);
