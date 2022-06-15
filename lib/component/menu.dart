import 'package:flame/components.dart';
import 'package:flutter/material.dart';

class Menu extends SpriteComponent with HasGameRef{

  Menu({required Sprite sprite }) : super(sprite: sprite, size: Vector2(0, 0));

  @override
  Future<void>? onLoad() async{
    // TODO: implement onLoad

    SpriteComponent shadow = SpriteComponent(sprite: await Sprite.load('bg_person_shadow.png'),size: Vector2(80,35));
    add(shadow);

    SpriteComponent bgIcon = SpriteComponent(sprite: await Sprite.load('btn_function.png'),size: Vector2(80,35));
    bgIcon.priority = 1;
    bgIcon.position.y = -10;
    add(bgIcon);

    SpriteComponent icon = SpriteComponent(sprite: await Sprite.load('icon_setting.png'),size: Vector2(25,25));
    icon.priority = 2;
    icon.position.x = 10;
    icon.position.y = -5;
    add(icon);

    TextComponent value = TextComponent(textRenderer: TextPaint(style: const TextStyle(
      fontSize: 10,
      color: Colors.black,)));
    value.text = '设置';
    value.position.x = 40;
    value.priority = 2;
    add(value);

  }
}