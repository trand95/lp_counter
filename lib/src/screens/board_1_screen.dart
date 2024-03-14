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
        toolbarHeight: 30,
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
      body: Stack(
        children: <Widget>[
          buildContainer(context),
          Center(
            heightFactor: 2,
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
              onTap: () {
                const Text('test');
              },
              child: Ink(
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(4),
                      bottomLeft: Radius.circular(4)),
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
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(4),
                      bottomRight: Radius.circular(4)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
