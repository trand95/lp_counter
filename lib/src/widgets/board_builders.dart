import 'package:flutter/material.dart';
import 'package:lp_counter/src/models/player.dart';

Widget buildPlayerRow(
    int playerIndex, Function(int, int) updateLife, List<Player> players) {
  return Stack(
    alignment: AlignmentDirectional.center,
    children: <Widget>[
      buildContainer(playerIndex, updateLife),
      buildLifePointsText(playerIndex, players),
    ],
  );
}

Widget buildContainer(int playerIndex, Function(int, int) updateLife) {
  return Padding(
    padding: const EdgeInsetsDirectional.fromSTEB(4, 4, 4, 4),
    child: Row(
      children: [
        Expanded(
          child: buildInkWell(
              playerIndex,
              -1,
              updateLife,
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
    BorderRadius borderRadius) {
  return InkWell(
    splashColor: Colors.transparent,
    onTap: () => updateLife(playerIndex, delta),
    child: Ink(
      decoration: BoxDecoration(
        color: Colors.blue,
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
