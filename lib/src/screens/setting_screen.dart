import 'package:flutter/material.dart';
import 'package:lp_counter/src/screens/home_screen.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
          toolbarHeight: 33,
          backgroundColor: Colors.black,
          centerTitle: true,
          title: Text(
            'Settings',
            style: TextStyle(color: Colors.white54),
          ),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            color: Colors.white,
            onPressed: () => Navigator.pop(context),
          )),
      body: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
        child: Center(
          child: Column(
            children: [
              const Text(
                'Players',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              Wrap(
                //direction: Axis.horizontal,
                spacing: 10,
                children: List.generate(
                  6,
                  (index) => const Chip(
                    avatar: CircleAvatar(
                      backgroundColor: Colors.orangeAccent,
                      child: Icon(Icons.person),
                    ),
                    label: Text('Mapps'),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
