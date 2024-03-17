import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lp_counter/src/models/player.dart';
import 'package:lp_counter/src/widgets/board_builders.dart';

class Board3Screen extends StatefulWidget {
  final int initLife;
  const Board3Screen({super.key, required this.initLife});

  @override
  State<Board3Screen> createState() => _Board3ScreenState();
}

class _Board3ScreenState extends State<Board3Screen> {
  late List<Player> players;
  static const List<int> startingLives = [20, 30, 40, 50];

  int getStartingLife(int initLife) {
    return initLife >= 0 && initLife < startingLives.length
        ? startingLives[initLife]
        : initLife;
  }

  @override
  void initState() {
    super.initState();
    int startingLife = getStartingLife(widget.initLife);
    players = List.generate(3, (index) => Player(lifePoints: startingLife));
  }

  void _updateLife(int playerIndex, int delta) {
    setState(() {
      players[playerIndex].lifePoints += delta;
    });
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
          'Board 3',
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
              Column(
                children: <Widget>[
                  Expanded(
                    flex: 2,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: RotatedBox(
                            quarterTurns: 1,
                            child: buildPlayerRow(0, _updateLife, players),
                          ),
                        ),
                        Expanded(
                          child: RotatedBox(
                            quarterTurns: 3,
                            child: buildPlayerRow(1, _updateLife, players),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: RotatedBox(
                      quarterTurns: 0,
                      child: buildPlayerRow(2, _updateLife, players),
                    ),
                  ),
                ],
              ),
              Positioned(
                top: constraints.maxHeight * (2 / 3) -
                    23, // Positionieren Sie das Icon abhängig von der Höhe der Container
                left: constraints.maxWidth * 0.5 -
                    23, // Positionieren Sie das Icon in der Mitte
                child: Container(
                  height: 46,
                  width: 46,
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    color: Colors.white70,
                    icon: const Icon(Icons.menu),
                    onPressed: () {},
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
