import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:lp_counter/src/models/player.dart';
import 'package:lp_counter/src/widgets/board_builders.dart';

class Board1Screen extends StatefulWidget {
  final int initLife;

  const Board1Screen({super.key, required this.initLife});

  @override
  State<Board1Screen> createState() => _Board1ScreenState();
}

class _Board1ScreenState extends State<Board1Screen> {
  late List<Player> players;
  static const List<int> startingLives = [20, 30, 40, 50];
  bool showDeltaText = false;
  int delta = 0;

  int getStartingLife(int initLife) {
    return initLife >= 0 && initLife < startingLives.length
        ? startingLives[initLife]
        : initLife;
  }

  @override
  void initState() {
    super.initState();
    int startingLife = getStartingLife(widget.initLife);
    players = List.generate(1, (index) => Player(lifePoints: startingLife));
  }

  void _updateLife(int playerIndex, int delta) {
    setState(
      () {
        players[playerIndex].lifePoints += delta;
        this.delta += delta; // Summieren Sie den Delta-Wert
        showDeltaText = true; // Text anzeigen
      },
    );

    Future.delayed(
      const Duration(seconds: 4),
      () {
        setState(
          () {
            this.delta = 0;
            showDeltaText = false; // Text ausblenden
            // Delta-Wert zurücksetzen
          },
        );
      },
    );
  }

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
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Stack(
            children: <Widget>[
              RotatedBox(
                quarterTurns: 0,
                child: buildPlayerRow(0, _updateLife, players),
              ),
              Align(
                alignment: Alignment.topLeft,
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
              Positioned(
                top: 200,
                left: constraints.maxWidth * 0.5 - 10,
                child: AnimatedOpacity(
                  opacity: showDeltaText ? 1.0 : 0.0,
                  duration: const Duration(milliseconds: 1000),
                  child: Text(
                    delta > 0 ? '+$delta' : '$delta',
                    style: TextStyle(
                      color: delta > 0 ? Colors.green : Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
