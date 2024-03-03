import 'package:flutter/material.dart';

class MenuDialog {
  static void show(BuildContext context, List<String> playerNames,
      ValueChanged<int> onPlayerCountChanged) {
    TextEditingController playerNameController = TextEditingController();

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Einstellungen'),
          backgroundColor: Colors.transparent,
          content: Container(
            color: Colors.transparent,
            child: Column(
              children: [
                TextField(
                  controller: playerNameController,
                  decoration: InputDecoration(labelText: 'Spielername'),
                ),
                ElevatedButton(
                  onPressed: () {
                    if (playerNameController.text.isNotEmpty) {
                      playerNames.add(playerNameController.text);
                      playerNameController.clear();
                      onPlayerCountChanged(playerNames.length);
                    }
                  },
                  child: Text('Spieler hinzufügen'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Fertig'),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
