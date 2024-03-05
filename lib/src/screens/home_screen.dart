import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:lp_counter/src/styles/button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(0, 200, 0, 0),
        child: Center(
          child: Column(
            children: [
              ShaderMask(
                shaderCallback: (bounds) => const RadialGradient(
                  center: Alignment.center,
                  radius: 1.0,
                  colors: [
                    Colors.yellow,
                    Colors.deepOrange,
                  ],
                  tileMode: TileMode.mirror,
                ).createShader(bounds),
                child: const Text(
                  'MAGIC',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 80,
                      fontFamily: 'SATAM'),
                ),
              ),
              const Text(
                '    Life Counter',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  letterSpacing: 7,
                ),
              ),
              const Gap(80),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/setting');

                  /*Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SettingScreen(),
                    ),
                  );*/
                },
                style: buttonStart,
                child: const Text(
                  'Start',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
