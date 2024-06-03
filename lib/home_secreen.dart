import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required this.playGame, required this.rulesScreen});

  final void Function() playGame;
  final void Function() rulesScreen;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            height: 50,
          ),
          Text(
            'COLOR',
            style: GoogleFonts.satisfy(
                color: Colors.black, fontSize: 70, fontWeight: FontWeight.bold),
          ),
          ShaderMask(
            shaderCallback: (bounds) {
              return LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.black,
                  Colors.transparent,
                ],
              ).createShader(Rect.fromLTRB(0, 0, bounds.width, bounds.height));
            },
            blendMode: BlendMode.dstIn,
            child: Text(
              'CONQUEST',
              style: GoogleFonts.satisfy(
                  color: Colors.black, fontSize: 70, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 120,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                width: 8,
              ),
              Column(
                children: [
                  const SizedBox(
                    height: 35,
                  ),
                  Image.asset(
                    'images/left.png',
                    width: 150,
                  ),
                ],
              ),
              Image.asset(
                'images/right.png',
                width: 160,
              ),
            ],
          ),
          const SizedBox(
            height: 80,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              OutlinedButton(
                onPressed: playGame,
                style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Color.fromARGB(255, 73, 173, 255),
                    fixedSize: Size(170, 70)),
                child: const Text(
                  'PLAY',
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                ),
              ),
              IconButton(
                icon: Padding(
                  padding: const EdgeInsets.all(12.5),
                  child: SizedBox(
                    height: 55,
                    width: 53.5,
                    child: Image.asset('images/question.png'),
                  ),
                ),
                onPressed: rulesScreen,
              ),
            ],
          )
        ],
      ),
    );
  }
}
