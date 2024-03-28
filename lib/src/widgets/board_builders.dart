import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:lp_counter/src/models/player.dart';

List<Color> playerColors = [
  Colors.red,
  Colors.blue,
  Colors.green,
  Colors.yellow,
  Colors.orange,
  Colors.purple,
];

Widget buildPlayerRow(
  int playerIndex,
  Function(int, int) updateLife,
  List<Player> players,
  constraints,
) {
  return Stack(
    alignment: AlignmentDirectional.center,
    children: <Widget>[
      buildContainer(
          playerIndex, updateLife, playerColors[playerIndex], constraints),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          buildDeltaText(constraints, players[playerIndex].showDeltaText,
              players[playerIndex].delta),
          const Gap(10),
          buildLifePointsText(players[playerIndex].lifePoints),
          const Gap(10),
          buildCurrentLifeText(
              constraints,
              players[playerIndex].showCurrentLifeText,
              players[playerIndex].currentLife),
        ],
      ),
    ],
  );
}

Widget buildContainer(
  int playerIndex,
  Function(int, int) updateLife,
  Color color,
  constraints,
) {
  return Padding(
    padding: const EdgeInsetsDirectional.fromSTEB(4, 4, 4, 4),
    child: Stack(children: <Widget>[
      Row(
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
              ),
            ),
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
              ),
            ),
          ),
        ],
      ),
    ]),
  );
}

Widget buildDeltaText(constraints, showDeltaText, int delta) {
  return AnimatedOpacity(
    opacity: showDeltaText ? 1.0 : 0.0,
    duration: const Duration(milliseconds: 0),
    child: Text(
      delta > 0 ? '+$delta' : '$delta',
      style: const TextStyle(
        // fontFamily: 'Arial',
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}

Widget buildCurrentLifeText(constraints, showCurrentLifeText, int currentLife) {
  return AnimatedOpacity(
    opacity: showCurrentLifeText ? 1.0 : 0.0,
    duration: const Duration(milliseconds: 0),
    child: Text(
      '$currentLife',
      style: const TextStyle(
        //fontFamily: 'Arial',
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}

Widget buildInkWell(int playerIndex, int delta, Function(int, int) updateLife,
    Color color, BorderRadius borderRadius) {
  return InkWell(
    splashColor: Colors.transparent,
    highlightColor: Colors.black.withOpacity(0.15),
    onTap: () => updateLife(playerIndex, delta),
    child: Ink(
      decoration: BoxDecoration(
          color: color,
          borderRadius: borderRadius,
          border: Border.all(
            color: color,
            width: 0.0,
          )),
    ),
  );
}

Widget buildLifePointsText(int lifePoints) {
  return Text(
    '$lifePoints',
    style: const TextStyle(
        //fontFamily: 'Arial',
        color: Colors.white,
        fontSize: 40,
        fontWeight: FontWeight.bold),
  );
}
