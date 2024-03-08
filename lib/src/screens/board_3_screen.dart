import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Board3Screen extends StatefulWidget {
  const Board3Screen({super.key});

  @override
  State<Board3Screen> createState() => _Board3ScreenState();
}

class _Board3ScreenState extends State<Board3Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        toolbarHeight: 33,
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text(
          'Board 3',
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
            borderRadius: BorderRadius.circular(4), color: Colors.red),
      ),
    );
  }
}
