import 'package:brain_game/pages/game/brain_game.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';

class GamePage extends StatelessWidget {

  const GamePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: GameWidget(game: BrainGame()),
    );
  }
}