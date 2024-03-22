import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lp_counter/src/models/player.dart';
import 'package:lp_counter/src/widgets/board_builders.dart';

class Board62Screen extends StatefulWidget {
  final int initLife;
  const Board62Screen({super.key, required this.initLife});

  @override
  State<Board62Screen> createState() => _Board62ScreenState();
}

class _Board62ScreenState extends State<Board62Screen> {
  late List<Player> players;
  static const List<int> startingLives = [20, 30, 40, 50];
  bool showDeltaText = false;
  bool showCurrentLifeText = false;
  int currentLife = 0;
  int delta = 0;
  late int _lastUpdateId = 0;


  int getStartingLife(int initLife) {
    return initLife >= 0 && initLife < startingLives.length
        ? startingLives[initLife]
        : initLife;
  }

  @override
  void initState() {
    super.initState();
    int startingLife = getStartingLife(widget.initLife);
    players = List.generate(6, (index) => Player(lifePoints: startingLife));
  }

  void _updateLife(int playerIndex, int delta) {
    final int updateId = ++players[playerIndex].lastUpdateId;
    setState(() {
      if (players[playerIndex].showCurrentLifeText == false) {
        players[playerIndex].currentLife = players[playerIndex].lifePoints;
      }
      players[playerIndex].lifePoints += delta;
      players[playerIndex].delta += delta;
      players[playerIndex].showDeltaText = true;
      players[playerIndex].showCurrentLifeText = true;
    });

    Future.delayed(
      const Duration(seconds: 4),
      () {
        if (players[playerIndex].lastUpdateId == updateId) {
          setState(() {
            players[playerIndex].delta = 0;
            players[playerIndex].showDeltaText = false;
            players[playerIndex].showCurrentLifeText = false;
            players[playerIndex].lastUpdateId = 0;
          });
        }
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
          'Board 62',
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
                children: [
                  Expanded(
                    flex: 8,
                    child: RotatedBox(
                      quarterTurns: 2,
                      child: buildPlayerRow(0, _updateLife, players, constraints),
                    ),
                  ),
                  Expanded(
                    flex: 10,
                    child: Row(
                      children: [
                        Expanded(
                          child: RotatedBox(
                            quarterTurns: 1,
                            child: buildPlayerRow(1, _updateLife, players, constraints),
                          ),
                        ),
                        Expanded(
                          child: RotatedBox(
                            quarterTurns: 3,
                            child: buildPlayerRow(2, _updateLife, players, constraints),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 10,
                    child: Row(
                      children: [
                        Expanded(
                          child: RotatedBox(
                            quarterTurns: 1,
                            child: buildPlayerRow(3, _updateLife, players, constraints),
                          ),
                        ),
                        Expanded(
                          child: RotatedBox(
                            quarterTurns: 3,
                            child: buildPlayerRow(4, _updateLife, players, constraints),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 8,
                    child: buildPlayerRow(5, _updateLife, players, constraints),
                  ),
                ],
              ),
              Positioned(
                top: constraints.maxHeight * 0.5 - 23,
                left: constraints.maxWidth * 0.5 - 23,
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
