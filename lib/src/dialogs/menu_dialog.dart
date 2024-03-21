import 'package:flutter/material.dart';

class MenuDialog {
  static void show(
      BuildContext context, void Function(int) onMenuItemSelected) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          backgroundColor: Colors.transparent,
          child: Container(
            color: Colors.transparent,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Fertig'),
                ),
                ElevatedButton(
                  onPressed: () {
                    onMenuItemSelected(0);
                    Navigator.pop(context); // Schließt den Dialog
                  },
                  child: const Text('Button 1'),
                ),
                ElevatedButton(
                  onPressed: () {
                    onMenuItemSelected(1);
                    Navigator.pop(context); // Schließt den Dialog
                  },
                  child: const Text('Button 2'),
                ),
                ElevatedButton(
                  onPressed: () {
                    onMenuItemSelected(2);
                    Navigator.pop(context); // Schließt den Dialog
                  },
                  child: const Text('Button 3'),
                ),
                ElevatedButton(
                  onPressed: () {
                    onMenuItemSelected(3);
                    Navigator.pop(context); // Schließt den Dialog
                  },
                  child: const Text('Button 4'),
                ),
                ElevatedButton(
                  onPressed: () {
                    onMenuItemSelected(4);
                    Navigator.pop(context); // Schließt den Dialog
                  },
                  child: const Text('Button 5'),
                ),
                ElevatedButton(
                  onPressed: () {
                    onMenuItemSelected(5);
                    Navigator.pop(context); // Schließt den Dialog
                  },
                  child: const Text('Button 6'),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
