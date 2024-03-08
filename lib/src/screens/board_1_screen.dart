import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

class Board1Screen extends StatefulWidget {
  const Board1Screen({super.key});

  @override
  State<Board1Screen> createState() => _Board1ScreenState();
}

class _Board1ScreenState extends State<Board1Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        toolbarHeight: 33,
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text(
          'Board 1',
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
            borderRadius: BorderRadius.circular(4), color: Colors.yellow),
      ),
    );
  }
}
