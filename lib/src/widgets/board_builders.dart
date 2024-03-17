import 'package:flutter/material.dart';
import 'package:lp_counter/src/models/player.dart';

// Definieren Sie eine Liste von Farben, die Sie den Spielern zuweisen möchten
List<Color> playerColors = [
  Colors.red,
  Colors.blue,
  Colors.green,
  Colors.yellow,
  Colors.orange,
  Colors.purple,
];

Widget buildPlayerRow(
    int playerIndex, Function(int, int) updateLife, List<Player> players) {
  return Stack(
    alignment: AlignmentDirectional.center,
    children: <Widget>[
      buildContainer(playerIndex, updateLife, playerColors[playerIndex]),
      buildLifePointsText(playerIndex, players),
    ],
  );
}

Widget buildContainer(
    int playerIndex, Function(int, int) updateLife, Color color) {
  return Padding(
    padding: const EdgeInsetsDirectional.fromSTEB(4, 4, 4, 4),
    child: Row(
      children: [
        Expanded(
          child: buildInkWell(
              playerIndex,
              -1,
              updateLife,
              color,
              const BorderRadius.only(
                topLeft: Radius.circular(4),
                bottomLeft: Radius.circular(4),
              )),
        ),
        Expanded(
          child: buildInkWell(
              playerIndex,
              1,
              updateLife,
              color,
              const BorderRadius.only(
                topRight: Radius.circular(4),
                bottomRight: Radius.circular(4),
              )),
        ),
      ],
    ),
  );
}

Widget buildInkWell(int playerIndex, int delta, Function(int, int) updateLife,
    Color color, BorderRadius borderRadius) {
  return InkWell(
    splashColor: Colors.transparent,
    onTap: () => updateLife(playerIndex, delta),
    child: Ink(
      decoration: BoxDecoration(
        color: color, // Verwenden Sie die übergebene Farbe
        borderRadius: borderRadius,
      ),
    ),
  );
}

Widget buildLifePointsText(int playerIndex, List<Player> players) {
  return Text(
    '${players[playerIndex].lifePoints}',
    style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
  );
}
