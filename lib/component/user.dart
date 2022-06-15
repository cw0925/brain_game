import 'package:flame/components.dart';
import 'package:flutter/material.dart';

class User extends SpriteComponent {

  User({required Sprite sprite }) : super(sprite: sprite, size: Vector2(20, 20));

  late TextComponent name;
  late SpriteComponent gold;

  @override
  Future<void>? onLoad() async{
    // TODO: implement onLoad

    position.x = 10;
    position.y = 10;

    name = TextComponent(textRenderer: TextPaint(style: const TextStyle(
        fontSize: 11,
        color: Colors.white,)));
    name.text = '番茄爱西红柿';
    name.position.x = 25;
    add(name);

    SpriteComponent gold = SpriteComponent(sprite: await Sprite.load('icon_gold.png'),size: Vector2(10,10));
    add(gold);

    // name = TextComponent(textRenderer: TextPaint(style: const TextStyle(
    //     fontSize: 14,
    //     color: Colors.white,
    //     fontFamily: 'Menlo',
    //     shadows: [
    //       Shadow(color: Colors.red, offset: Offset(1, 1), blurRadius: 1),
    //     ])));
    // name.text = '番茄爱西红柿';
    // name.position.x = 25;
    // add(name);
  }

}