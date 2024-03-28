import 'package:flutter/material.dart';

import 'package:wakelock/wakelock.dart';
import 'package:go_router/go_router.dart';
import 'package:lp_counter/src/routes/routes_name.dart';

class GlowingButton extends StatefulWidget {
  const GlowingButton({
    super.key,
  });

  @override
  State<GlowingButton> createState() => _GlowingButtonState();
}

class _GlowingButtonState extends State<GlowingButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation _animation;

  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );
    _controller.repeat(reverse: true);
    _animation = Tween(begin: 2.0, end: 15.0).animate(_controller)
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose(); // Geändert: Dispose-Methode hinzugefügt
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => setState(
        () {
          context.goNamed(RouteNames.settings);
          Wakelock.enable();
        },
      ),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 100),
        height: 48,
        width: 256,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: const Color.fromARGB(255, 27, 28, 30),
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(130, 237, 125, 58),
              spreadRadius: _animation.value,
              blurRadius: _animation.value,
            ),
          ],
        ),
        child: const Center(
          child: Text(
            'Start',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.white,
                letterSpacing: 5),
          ),
        ),
      ),
    );
  }
}
