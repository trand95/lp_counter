import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:lp_counter/src/styles/glowing_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Stack(children: <Widget>[
          Opacity(
            opacity: 1,
            child: Image.asset(
              'assets/images/dark_background.jpg',
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
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
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                      child: const Text(
                        'MAGIC',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 80,
                          fontFamily: 'SATAM',
                          shadows: [
                            Shadow(
                              blurRadius: 9.0,
                              color: Colors.black,
                              offset: Offset(5.0, 5.0),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  AnimatedTextKit(
                    animatedTexts: [
                      WavyAnimatedText(
                        '      Life Counter',
                        textStyle: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          letterSpacing: 7,
                        ),
                      ),
                    ],
                    isRepeatingAnimation: false,
                  ),

                  /*  const Text(
                    '    Life Counter',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      letterSpacing: 7,
                    ),
                  ),*/
                  const Gap(80),
                  const GlowingButton(
                    color1: Colors.deepOrange,
                    color2: Colors.yellow,
                  ),
                  /*ElevatedButton(
                    onPressed: () {
                      context.goNamed(RouteNames.settings);
                      Wakelock.enable();
                    },
                    style: buttonStart,
                    child: const Text(
                      'Start',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Colors.white),
                    ),
                  ),*/
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
