import 'package:flutter/material.dart';
import 'package:game/home_secreen.dart';
import 'package:game/game_screen.dart';
import 'package:game/playerInfo_screen.dart';
import 'package:game/game_rules_screen.dart';

class Game extends StatefulWidget {
  const Game({super.key});
  @override
  State<Game> createState() {
    return _Game();
  }
}

class _Game extends State<Game> {
  var activeScreen = 'home-screen';
  void switchtoPlayersScreen() {
    setState(() {
      activeScreen = 'player-info-screen';
    });
  }

  void switchtoGameScreen() {
    setState(() {
      activeScreen = 'game-screen';
    });
  }

  void switchtoHomeScreen() {
    setState(() {
      activeScreen = 'home-screen';
    });
  }

  void switchtoRulesScreen() {
    setState(() {
      activeScreen = 'rules-screen';
    });
  }

  @override
  Widget build(context) {
    Widget screenWidget = HomeScreen(
      playGame: switchtoPlayersScreen,
      rulesScreen: switchtoRulesScreen,
    );
    if (activeScreen == 'player-info-screen') {
      screenWidget = PlayerInfoScreen(
          startGame: switchtoGameScreen, homeScreen: switchtoHomeScreen);
    }
    if (activeScreen == 'game-screen') {
      screenWidget = GameScreen(
          playersScreen: switchtoPlayersScreen,
          playAgain: switchtoPlayersScreen,
          homeScreen: switchtoHomeScreen);
    }
    if (activeScreen == 'home-screen') {
      screenWidget = HomeScreen(
          playGame: switchtoPlayersScreen, rulesScreen: switchtoRulesScreen);
    }
    if (activeScreen == 'rules-screen') {
      screenWidget = RulesScreen(homeScreen: switchtoHomeScreen);
    }
    return MaterialApp(
      debugShowCheckedModeBanner:
          false, // To prevent pixel overflow due to keyboard.
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 255, 239, 92),
                Color.fromARGB(255, 255, 81, 46)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
