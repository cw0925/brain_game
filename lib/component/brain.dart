import 'dart:math';

import 'package:flame/components.dart';
import 'package:flutter/material.dart';

class Brain extends SpriteComponent with HasGameRef{

  Brain({required Sprite sprite }) : super(sprite: sprite, size: Vector2(0, 0));

  @override
  Future<void>? onLoad() async{
    // TODO: implement onLoad

    position.x = gameRef.size.x / 2 - 50;
    position.y = 10;

    SpriteComponent bgIcon = SpriteComponent(sprite: await Sprite.load('bg_ranking_name.png'),size: Vector2(100,35));
    add(bgIcon);

    TextComponent title = TextComponent(textRenderer: TextPaint(style: const TextStyle(
      fontSize: 10,
      color: Colors.blueAccent,)));
    title.text = '脑力值';
    title.position.x = 10;
    title.position.y = 10;
    title.priority = 2;
    add(title);

    TextComponent value = TextComponent(textRenderer: TextPaint(style: const TextStyle(
      fontSize: 10,
      color: Colors.black,)));
    value.text = '100';
    value.position.x = 50;
    value.position.y = 10;
    value.priority = 2;
    add(value);

  }
}