import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:lp_counter/src/styles/button_text.dart';
import 'package:lp_counter/src/styles/app_buttons.dart';
import 'package:lp_counter/src/styles/color.dart';
import 'package:lp_counter/src/styles/custom_layout.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  int selectedPlayer = 1;
  int selectedLayout = 0;
  int selectedLife = 0;
  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
          toolbarHeight: 33,
          backgroundColor: Colors.black,
          centerTitle: true,
          title: const Text(
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
          child: SingleChildScrollView(
            child: Column(
              children: [
                ButtonText(size: 20, text: 'Players', color: white),
                const Gap(20),
                _playerSection(),
                const Gap(20),
                Visibility(
                  visible: isVisible,
                  child: ButtonText(size: 20, text: 'Layout', color: white),
                ),
                const Gap(20),
                _layoutSection(),
                const Gap(20),
                ButtonText(size: 20, text: 'Life', color: white),
                const Gap(20),
                _lifeSection(),
                const Gap(50),
                AppButtons(
                  height: 50,
                  width: 250,
                  color: white,
                  backgroundColor: Colors.orange,
                  borderColor: Colors.orange,
                  text: 'Play',
                ),
                const Gap(50),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Visibility _layoutSection() {
    return Visibility(
      visible: isVisible,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(
          2,
          (index) => InkWell(
            onTap: () {
              setState(() {
                selectedLayout = index;
              });
            },
            child: CustomLayout(
              selectedPlayer: selectedPlayer,
              index: index,
              borderColor: selectedLayout == index ? white : Colors.black,
            ),
          ),
        ),
      ),
    );
  }

  Wrap _playerSection() {
    return Wrap(
      spacing: 30,
      runSpacing: 30,
      children: List.generate(
        6,
        (index) => InkWell(
          onTap: () {
            setState(() {
              selectedPlayer = index;
              isVisible = selectedPlayer >= 3;
            });
          },
          child: AppButtons(
              height: 60,
              width: 100,
              color: white,
              backgroundColor: const Color.fromARGB(255, 101, 98, 98),
              borderColor: selectedPlayer == index
                  ? white
                  : const Color.fromARGB(255, 101, 98, 98),
              isIcon: false,
              text: (index + 1).toString()),
        ),
      ),
    );
  }

  Wrap _lifeSection() {
    return Wrap(
      spacing: 30,
      runSpacing: 30,
      children: List.generate(
        4,
        (index) => InkWell(
          onTap: () {
            setState(() {
              selectedLife = index;
            });
          },
          child: Padding(
            padding: const EdgeInsets.all(0.0),
            child: AppButtons(
              height: 100,
              width: 168,
              color: white,
              backgroundColor: const Color.fromARGB(255, 101, 98, 98),
              borderColor: selectedLife == index
                  ? white
                  : const Color.fromARGB(255, 101, 98, 98),
              isIcon: false,
              text: _getLifeButtonText(index),
            ),
          ),
        ),
      ),
    );
  }

  String _getLifeButtonText(int index) {  
    switch (index) {
      case 0:
        return '20';
      case 1:
        return '30';
      case 2:
        return '40';
      case 3:
        return '50';
      default:
        return '';
    }
  }
}
