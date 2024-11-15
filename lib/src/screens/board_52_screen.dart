import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lp_counter/src/models/player.dart';
import 'package:lp_counter/src/widgets/board_builders.dart';
import 'package:lp_counter/src/dialogs/menu_dialog.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Board52Screen extends StatefulWidget {
  final int initLife;
  const Board52Screen({super.key, required this.initLife});

  @override
  State<Board52Screen> createState() => _Board52ScreenState();
}

class _Board52ScreenState extends State<Board52Screen> {
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
    players = List.generate(5, (index) => Player(lifePoints: startingLife));
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
          'Board 52',
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
                    flex: 10,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: RotatedBox(
                            quarterTurns: 1,
                            child: buildPlayerRow(
                                0, _updateLife, players, constraints),
                          ),
                        ),
                        Expanded(
                          child: RotatedBox(
                            quarterTurns: 3,
                            child: buildPlayerRow(
                                1, _updateLife, players, constraints),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 10,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: RotatedBox(
                            quarterTurns: 1,
                            child: buildPlayerRow(
                                2, _updateLife, players, constraints),
                          ),
                        ),
                        Expanded(
                          child: RotatedBox(
                            quarterTurns: 3,
                            child: buildPlayerRow(
                                3, _updateLife, players, constraints),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 8,
                    child: buildPlayerRow(4, _updateLife, players, constraints),
                  ),
                ],
              ),
              Positioned(
                top: constraints.maxHeight * (5 / 7) -
                    23, // Positionieren Sie das Icon abhängig von der Höhe der Container
                left: constraints.maxWidth * 0.5 -
                    23, // Positionieren Sie das Icon in der Mitte
                child: GestureDetector(
                  onTap: () {
                    MenuDialog.show(context, (int selectedItemIndex) {});
                  },
                  child: Container(
                    height: 46,
                    width: 46,
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      shape: BoxShape.circle,
                    ),
                    child: SvgPicture.asset(
                      'assets/images/menu6.svg',
                      colorFilter: const ColorFilter.mode(
                        Colors.white,
                        BlendMode.srcIn,
                      ),
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
