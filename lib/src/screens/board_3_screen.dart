import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

class Board3Screen extends StatefulWidget {
  const Board3Screen({super.key});

  @override
  State<Board3Screen> createState() => _Board3ScreenState();
}

class _Board3ScreenState extends State<Board3Screen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        toolbarHeight: 30,
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
      body: Stack(
        alignment: AlignmentDirectional.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Expanded(
                  flex: 10,
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
                  flex: 5,
                  child: buildContainer(context),
                ),
              ],
            ),
          ),
          Positioned(
            top: height * 0.6,
            bottom: height * 0.3,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.black,
                shape: BoxShape.circle,
              ),
              child: IconButton(
                color: Colors.white70,
                // iconSize: 60,
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
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(4),
        ),
      ),
    );
  }
}
