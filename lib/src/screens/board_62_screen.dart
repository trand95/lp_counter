import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Board62Screen extends StatefulWidget {
  const Board62Screen({super.key});

  @override
  State<Board62Screen> createState() => _Board62ScreenState();
}

class _Board62ScreenState extends State<Board62Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        toolbarHeight: 30,
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text(
          'Board 62',
          style: TextStyle(color: Colors.white54),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          color: Colors.white,
          onPressed: () => context.go('/settings'),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Column(
          children: [
            Expanded(
              child: buildContainer(context),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: buildContainer(context),
                  ),
                  Expanded(
                    child: buildContainer(context),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: buildContainer(context),
                  ),
                  Expanded(
                    child: buildContainer(context),
                  ),
                ],
              ),
            ),
            Expanded(
              child: buildContainer(context),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildContainer(context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(4),
        ),
      ),
    );
  }
}
