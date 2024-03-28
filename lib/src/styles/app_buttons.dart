import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AppButtons extends StatefulWidget {
  final Color color1;
  final Color color2;
  final Color textColor;
  final Color backgroundColor;
  final double height;
  final double width;

  final String? text;

  const AppButtons({
    super.key,
    this.text,
    required this.height,
    required this.width,
    required this.color1,
    required this.color2,
    required this.backgroundColor,
    required this.textColor,
  });

  @override
  State<AppButtons> createState() => _AppButtonsState();
}

class _AppButtonsState extends State<AppButtons>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Alignment> _topAlignmentAnimation;
  late Animation<Alignment> _bottomAlignmentAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 4),
      vsync: this,
    );
    _topAlignmentAnimation = TweenSequence<Alignment>(
      [
        TweenSequenceItem<Alignment>(
          tween: Tween<Alignment>(
              begin: Alignment.topLeft, end: Alignment.topRight),
          weight: 1,
        ),
        TweenSequenceItem<Alignment>(
          tween: Tween<Alignment>(
              begin: Alignment.topRight, end: Alignment.bottomRight),
          weight: 1,
        ),
        TweenSequenceItem<Alignment>(
          tween: Tween<Alignment>(
              begin: Alignment.bottomRight, end: Alignment.bottomLeft),
          weight: 1,
        ),
        TweenSequenceItem<Alignment>(
          tween: Tween<Alignment>(
              begin: Alignment.bottomLeft, end: Alignment.topLeft),
          weight: 1,
        ),
      ],
    ).animate(
      _controller,
    );

    _bottomAlignmentAnimation = TweenSequence<Alignment>(
      [
        TweenSequenceItem<Alignment>(
          tween: Tween<Alignment>(
              begin: Alignment.bottomRight, end: Alignment.bottomLeft),
          weight: 1,
        ),
        TweenSequenceItem<Alignment>(
          tween: Tween<Alignment>(
              begin: Alignment.bottomLeft, end: Alignment.topLeft),
          weight: 1,
        ),
        TweenSequenceItem<Alignment>(
          tween: Tween<Alignment>(
              begin: Alignment.topLeft, end: Alignment.topRight),
          weight: 1,
        ),
        TweenSequenceItem<Alignment>(
          tween: Tween<Alignment>(
              begin: Alignment.topRight, end: Alignment.bottomRight),
          weight: 1,
        ),
      ],
    ).animate(
      _controller,
    );
    _controller.repeat();
  }

  @override
  void dispose() {
    // Änderung: dispose-Methode hinzugefügt
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, _) {
        return Container(
            width: widget.width,
            height: widget.height,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  widget.color1,
                  widget.color2,
                ],
                begin: _topAlignmentAnimation.value,
                end: _bottomAlignmentAnimation.value,
              ),
              borderRadius: BorderRadius.circular(8),
              color: widget.backgroundColor,
              boxShadow: [
                BoxShadow(
                  color: widget.color1,
                  blurRadius: 8,
                  spreadRadius: 0.5,
                  offset: const Offset(1, 1),
                ),
                BoxShadow(
                  color: widget.color2,
                  blurRadius: 8,
                  spreadRadius: 0.5,
                  offset: const Offset(-1, -1),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: Container(
                width: widget.width,
                height: widget.height,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: widget.backgroundColor),
                child: Center(
                  child: Text(widget.text!,
                      style: TextStyle(
                          color: widget.textColor,
                          fontSize: 25,
                          fontWeight: FontWeight.bold)),
                ),
              ),
            ));
      },
    );
  }
}
