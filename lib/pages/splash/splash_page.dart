import 'package:brain_game/pages/game/game_page.dart';
import 'package:flame_splash_screen/flame_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashPage extends StatelessWidget{

  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FlameSplashScreen(
          theme: FlameSplashTheme(backgroundDecoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('assets/images/bg_cover.png'),
            ),
          ), logoBuilder: (BuildContext context) { return Container(); }),
          onFinish: (BuildContext context) => { Get.to(() => const GamePage()) }
      ),
    );
  }

}