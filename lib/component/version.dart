import 'dart:math';

import 'package:flame/components.dart';
import 'package:flutter/material.dart';

class Version extends SpriteComponent with HasGameRef{

  Version({required Sprite sprite }) : super(sprite: sprite, size: Vector2(0, 0));

  @override
  Future<void>? onLoad() async{
    // TODO: implement onLoad

    position.x = gameRef.size.x - 200;
    position.y = 10;

    SpriteComponent bgIcon = SpriteComponent(sprite: await Sprite.load('bg_subscription.png'),size: Vector2(200,35));
    add(bgIcon);

    SpriteComponent bgSubscript = SpriteComponent(sprite: await Sprite.load('btn_M_yellow.png'),size: Vector2(60,25));
    bgSubscript.position.x = 40;
    bgSubscript.position.y = 5;
    bgSubscript.priority = 1;
    add(bgSubscript);

    TextComponent title = TextComponent(textRenderer: TextPaint(style: const TextStyle(
      fontSize: 10,
      color: Colors.blueAccent,)));
    title.text = '去订阅';
    title.priority = 2;
    add(title);
    title.center = bgSubscript.center;

    TextComponent value = TextComponent(textRenderer: TextPaint(style: const TextStyle(
      fontSize: 10,
      color: Colors.black,)));
    value.text = '当前为体验版';
    value.position.x = 110;
    value.position.y = 10;
    value.priority = 1;
    add(value);

  }
}