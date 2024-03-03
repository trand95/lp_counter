import 'package:flutter/material.dart';
import 'package:lp_counter/src/models/player.dart';
import 'package:lp_counter/src/dialogs/menu_dialog.dart';

class LifeCounterScreen extends StatefulWidget {
  const LifeCounterScreen({super.key});

  @override
  // _LifeCounterScreenState createState() => _LifeCounterScreenState();
  State<LifeCounterScreen> createState() => _LifeCounterScreenState();
}

class _LifeCounterScreenState extends State<LifeCounterScreen> {
  List<Player> players = [];

  @override
  void initState() {
    super.initState();
    _addPlayer("Spieler 1", 20);
    _addPlayer("Spieler 2", 20);
  }

  void _addPlayer(String name, int initialLife) {
    setState(() {
      players.add(Player(name: name, life: initialLife));
    });
  }

  void _incrementLife(int playerIndex) {
    setState(() {
      players[playerIndex].life++;
    });
  }

  void _decrementLife(int playerIndex) {
    setState(() {
      players[playerIndex].life--;
    });
  }

  void _setPlayerName(int playerIndex, String name) {
    setState(() {
      players[playerIndex].name = name;
    });
  }

  // Funktion zum Anzeigen des Dialogs
  void _showMenuDialog() {
    MenuDialog.show(context, players.map((player) => player.name).toList(),
        (int playerCount) {
      setState(() {
        // Hier können Sie die Spielerliste aktualisieren oder andere Aktionen durchführen,
        // wenn sich die Anzahl der Spieler ändert.
        // Zum Beispiel: _updatePlayerCount(playerCount);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ho\'s Magic Life Counter'),
        actions: [
          // Menü-Button in der AppBar
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: _showMenuDialog,
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Flexible(
            child: ListView.builder(
              itemCount: players.length,
              itemBuilder: (context, index) {
                return Container(
                  width: double.infinity,
                  margin: const EdgeInsets.all(10.0),
                  padding: const EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          onChanged: (value) => _setPlayerName(index, value),
                          decoration: InputDecoration(
                            labelText: 'Name Spieler ${index + 1}',
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'Lebenspunkte: ${players[index].life}',
                        style: const TextStyle(fontSize: 20),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ElevatedButton(
                            onPressed: () => _incrementLife(index),
                            child: const Text('+'),
                          ),
                          ElevatedButton(
                            onPressed: () => _decrementLife(index),
                            child: const Text('-'),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          ElevatedButton(
            onPressed: () {
              _addPlayer("Spieler ${players.length + 1}", 20);
            },
            child: const Text('Spieler hinzufügen'),
          ),
        ],
      ),
    );
  }
}
