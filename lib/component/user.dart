import 'package:flame/components.dart';
import 'package:flutter/material.dart';

class User extends PositionComponent {

  User() : super(size: Vector2(0, 0));

  late TextComponent name;

  @override
  Future<void>? onLoad() async{
    // TODO: implement onLoad

    position.x = 15;
    position.y = 15;

    SpriteComponent bgIcon = SpriteComponent(sprite: await Sprite.load('icon_photo.png'),size: Vector2(35,35));
    add(bgIcon);

    SpriteComponent icon = SpriteComponent(sprite: await Sprite.load('icon_create_woman.png'),size: Vector2(15,15));
    icon.priority = 1;
    add(icon);

    bgIcon.center = icon.center;

    name = TextComponent(textRenderer: TextPaint(style: const TextStyle(
        fontSize: 10,
        color: Colors.white,)));
    name.text = '番茄爱西红柿';
    name.position.x = 30;
    name.position.y = -10;
    add(name);

    SpriteComponent gold = SpriteComponent(sprite: await Sprite.load('icon_gold.png'),size: Vector2(15,15));
    gold.position.x = 30;
    gold.position.y = 10;
    add(gold);

    TextComponent progress = TextComponent(textRenderer: TextPaint(style: const TextStyle(
        fontSize: 11,
        color: Colors.white,)));
    progress.text = '1 / 10';
    progress.position.x = 50;
    progress.position.y = 10;
    add(progress);

    for(int i=0;i<10;i++){
      SpriteComponent level = SpriteComponent(sprite: await Sprite.load('icon_gold.png'),size: Vector2(8,8));
      level.position.x = 8.0 * i;
      level.position.y = 30;
      add(level);
    }

    SpriteComponent gift = SpriteComponent(sprite: await Sprite.load('icon_gift.png'),size: Vector2(15,15));
    gift.position.x = 85;
    gift.position.y = 25;
    add(gift);
  }

}