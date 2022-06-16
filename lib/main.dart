import 'package:brain_game/pages/splash/splash_page.dart';
import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'pages/game/brain_game.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // Flame.device.setLandscape();
  runApp(GameWidget(game: BrainGame()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashPage()
    );
  }
}
