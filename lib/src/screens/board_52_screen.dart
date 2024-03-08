import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Board52Screen extends StatefulWidget {
  const Board52Screen({super.key});

  @override
  State<Board52Screen> createState() => _Board52ScreenState();
}

class _Board52ScreenState extends State<Board52Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        toolbarHeight: 33,
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text(
          'Board 52',
          style: TextStyle(color: Colors.white54),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          color: Colors.white,
          onPressed: () => context.go('/settings'),
        ),
      ),
      body: buildContainer(context),
    );
  }

  Widget buildContainer(context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4), color: Colors.lightBlue),
      ),
    );
  }
}
