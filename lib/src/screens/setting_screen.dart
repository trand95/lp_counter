import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:gap/gap.dart';
import 'package:lp_counter/src/styles/button_text.dart';
import 'package:lp_counter/src/styles/app_buttons.dart';
import 'package:lp_counter/src/styles/color.dart';
import 'package:lp_counter/src/styles/layout_41.dart';
import 'package:lp_counter/src/styles/layout_42.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  int selectedPlayer = -1;
  int selectedLayout = -1;
  int selectedLife = -1;
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
        child: InkWell(
          onTap: () {
            setState(() {
              selectedLayout = index;
            });
          },
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [Layout41(), Layout42()],
          ),
        ));
  }

/*
  Visibility _layoutSection() {
    return Visibility(
      visible: isVisible,
      child: Wrap(
        spacing: 30,
        runSpacing: 30,
        children: List.generate(
          2,
          (index) => InkWell(
            onTap: () {
              setState(() {
                selectedLayout = index;
              });
            },
            child: const Layout41(),/*AppButtons(
                height: 100,
                width: 150,
                color: white,
                backgroundColor: const Color.fromARGB(255, 101, 98, 98),
                borderColor: selectedLayout == index
                    ? white
                    : const Color.fromARGB(255, 101, 98, 98),
                isIcon: false,
                text: (index + 1).toString()),*/
          ),
        ),
      ),
    );
  }
*/
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
              (selectedPlayer == 3 ||
                      selectedPlayer == 4 ||
                      selectedPlayer == 5)
                  ? isVisible = true
                  : isVisible = false;
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
        6,
        (index) => InkWell(
          onTap: () {
            setState(() {
              selectedLife = index;
            });
          },
          child: AppButtons(
              height: 60,
              width: 100,
              color: white,
              backgroundColor: const Color.fromARGB(255, 101, 98, 98),
              borderColor: selectedLife == index
                  ? white
                  : const Color.fromARGB(255, 101, 98, 98),
              isIcon: false,
              text: (index + 1).toString()),
        ),
      ),
    );
  }
}
