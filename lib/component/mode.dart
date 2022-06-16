import 'package:flame/collisions.dart';
import 'package:flame/components.dart';
import 'package:flutter/material.dart';
import 'package:flame/input.dart';

class Mode extends PositionComponent with HasGameRef,Tappable {

  Mode() : super(size: Vector2(100, 100));

  @override
  Future<void>? onLoad() async {
    // TODO: implement onLoad

    SpriteComponent bgIcon = SpriteComponent(sprite: await Sprite.load('icon_expertmode.png'),size: Vector2((gameRef.canvasSize.x - 50) / 4 , (gameRef.canvasSize.x - 50) / 4));
    add(bgIcon);

    SpriteComponent titleBg = SpriteComponent(sprite: await Sprite.load('bg_mode_name.png'),size: Vector2(100,35));
    titleBg.position.x = 0;
    titleBg.position.y = 20;
    add(titleBg);
    titleBg.x = gameRef.canvasSize.x / 4 / 2 - 50;

    TextComponent title = TextComponent(textRenderer: TextPaint(style: const TextStyle(
      fontSize: 12,
      color: Colors.blueAccent,)));
    title.text = '普通模式';
    title.priority = 2;
    add(title);
    title.center = titleBg.center;

    SpriteComponent skillBg = SpriteComponent(sprite: await Sprite.load('icon_normalmode_calculate_choose.png'),size: Vector2(gameRef.canvasSize.x / 4 - 40,35));
    skillBg.position.x = 20;
    skillBg.position.y = 60;
    add(skillBg);

    TextComponent value = TextComponent(textRenderer: TextPaint(style: const TextStyle(
      fontSize: 12,
      color: Colors.black,)));
    value.text = '计算';
    value.position.x = 30;
    value.position.y = 70;
    value.priority = 2;
    add(value);

    SpriteComponent star = SpriteComponent(sprite: await Sprite.load('icon_medal_place.png'),size: Vector2(15,15));
    star.position.x = 70;
    star.position.y = 70;
    add(star);

    SpriteComponent star1 = SpriteComponent(sprite: await Sprite.load('icon_medal_place.png'),size: Vector2(15,15));
    star1.position.x = 90;
    star1.position.y = 70;
    add(star1);

    SpriteComponent star2 = SpriteComponent(sprite: await Sprite.load('icon_medal_place.png'),size: Vector2(15,15));
    star2.position.x = 110;
    star2.position.y = 70;
    add(star2);

    add(RectangleHitbox()..debugMode = true);

  }
  
  
  @override
  bool onTapDown(TapDownInfo info){
    print("tap up");
    return true;
  }
  
  

}

///游戏状态
enum GameMode {
  ///普通
  normal,

  ///困难
  difficult,

  ///家庭
  family,

  ///最强大脑
  master,
}