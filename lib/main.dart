import 'package:flutter/material.dart';
import 'package:lp_counter/src/screens/home_screen.dart';
import 'package:lp_counter/src/screens/setting_screen.dart';

void main() {
  runApp(MagicLifeCounter());
}

class MagicLifeCounter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomeScreen(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Roboto'),
      routes: {
        '/home': (context) => const HomeScreen(),
        '/setting': (context) => const SettingScreen(),
      },
    );
  }
}
