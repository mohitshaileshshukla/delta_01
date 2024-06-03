import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'globals.dart' as globals;

class PlayerInfoScreen extends StatelessWidget {
  const PlayerInfoScreen(
      {super.key, required this.startGame, required this.homeScreen});
  final void Function() startGame;
  final void Function() homeScreen;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  icon: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Image.asset(
                      'images/cross.png',
                      width: 45,
                    ),
                  ),
                  onPressed: homeScreen,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Container(height: 50,
              decoration: BoxDecoration(
                color: Color.fromARGB(212, 255, 240, 185),
                borderRadius: BorderRadius.circular(50.0),
                boxShadow: const [
                  BoxShadow(
                      blurRadius: 7, color: Colors.black26, spreadRadius: 4),
                ],
              ),
              child: Center(
                child: Text(
                  'PLAYER INFORMATION',
                  style: GoogleFonts.roboto(
                      color: Colors.black,
                      fontSize: 27.5,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Image.asset(
                    'images/p1.png',
                    width: 170,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 35.0),
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 63, 65, 104),
                      borderRadius: BorderRadius.all(
                        Radius.circular(22),
                      ),
                    ),
                    height: 95,
                    width: 165,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Image.asset(
                          'images/red.png',
                          width: 30,
                        ),
                        SizedBox(
                          width: 140,
                          child: TextField(
                            controller: globals.player1,
                            cursorColor: Colors.white,
                            cursorHeight: 24,
                            maxLength: 10,
                            textAlign: TextAlign.center,
                            style: GoogleFonts.lato(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                            decoration: InputDecoration(
                              isDense: true,
                              enabledBorder: const UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.red,
                                  width: 2.5,
                                ),
                              ),
                              hintText: 'Enter Player-1 Name',
                              hintStyle: GoogleFonts.lato(
                                  color: Colors.white70,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(
                  'images/p2.png',
                  width: 170,
                ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Container(
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 63, 65, 104),
                    borderRadius: BorderRadius.all(
                      Radius.circular(22),
                    ),
                  ),
                  height: 95,
                  width: 165,
                  child: Column(
                    children: [
                      Image.asset(
                        'images/blue.png',
                        width: 30,
                      ),
                      SizedBox(
                        width: 140,
                        child: TextField(
                          controller: globals.player2,
                          cursorColor: Colors.white,
                          cursorHeight: 24,
                          maxLength: 10,
                          textAlign: TextAlign.center,
                          style: GoogleFonts.lato(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                          decoration: InputDecoration(
                            isDense: true,
                            enabledBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.blue,
                                width: 2.5,
                              ),
                            ),
                            hintText: 'Enter Player-2 Name',
                            hintStyle: GoogleFonts.lato(
                                color: Colors.white70,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 37.5),
                child: Image.asset(
                  'images/left.png',
                  width: 160,
                ),
              ),
              Image.asset(
                'images/right.png',
                width: 170,
              ),
            ],
          ),
          const SizedBox(
            height: 35,
          ),
          OutlinedButton(
            onPressed: startGame,
            style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white, backgroundColor: Color.fromARGB(255, 73, 173, 255), fixedSize: Size(170, 70)),
            child: const Text(
              'START',
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
