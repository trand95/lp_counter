import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Board2Screen extends StatefulWidget {
  const Board2Screen({super.key});

  @override
  State<Board2Screen> createState() => _Board2ScreenState();
}

class _Board2ScreenState extends State<Board2Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        toolbarHeight: 30,
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text(
          'Board 2',
          style: TextStyle(color: Colors.white54),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          color: Colors.white,
          onPressed: () => context.go('/settings'),
        ),
      ),
      body: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
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
          Center(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.black,
                shape: BoxShape.circle,
              ),
              child: IconButton(
                color: Colors.white70,
                iconSize: 30,
                icon: const Icon(Icons.menu),
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildContainer(context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
      child: Row(
        children: [
          Expanded(
            child: InkWell(
              splashColor: Colors.transparent,
              onTap: () {const Text('test');},
              child: Ink(
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(4), bottomLeft: Radius.circular(4)),
                ),
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              splashColor: Colors.transparent,
              onTap: () {},
              child: Ink(
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(topRight: Radius.circular(4), bottomRight: Radius.circular(4)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
