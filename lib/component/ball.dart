import 'dart:math';

import 'package:flame/collisions.dart';
import 'package:flame/components.dart';
import 'package:flame/input.dart';
import 'package:flutter/material.dart';

class Ball extends PositionComponent with HasGameRef, Tappable,Hoverable {

  Ball({required Vector2 position}) : super(size: Vector2(50,37), anchor: Anchor.center);

  late final RectangleHitbox box;

  final TextStyle _textStyle = const TextStyle(
      fontSize: 12,
      color: Colors.white,
      shadows: [
        Shadow(color: Colors.red, offset: Offset(1, 1), blurRadius: 1),
      ]);

  @override
  Future<void>? onLoad() async {
    TextComponent damageText = TextComponent(textRenderer: TextPaint(style: _textStyle));
    damageText.text =
    '\n'
        '1 线性控制器 LinearEffectController\n'
        '2 曲线控制器 CurvedEffectController\n'
        '3 反向线性控制器 ReverseLinearEffectController\n'
        '4 反向曲线控制器 ReverseCurvedEffectController\n'
        '5 sin 曲线控制器 SineEffectController\n'
        '6 噪音曲线控制器 NoiseEffectController\n'
        '7 锯齿曲线控制器 ZigzagEffectController\n'
        '8 延时特效控制器 DelayedEffectController\n'
        '9 重复特效控制器 RepeatedEffectController\n'
        'q 无限特效控制器 InfiniteEffectController\n'
        ;
    add(damageText);
    box = RectangleHitbox()..debugMode = false;
    add(box);
  }

  @override
  bool onTapUp(TapUpInfo info) {
    box.debugMode = true;
    print('-------1');
    return true;
  }


  @override
  bool onTapDown(TapDownInfo info) {
    box.debugMode = true;
    box.debugColor = Colors.red;
    print('-------2');
    return true;
  }

  @override
  bool onTapCancel() {
    box.debugMode = false;
    return true;
  }

  void rotateTo(double deg){
    angle = deg;
  }


  @override
  bool onHoverEnter(PointerHoverInfo info) {
    box.debugMode = true;
    box.debugColor = Colors.greenAccent;
    return true;
  }

  @override
  bool onHoverLeave(PointerHoverInfo info) {
    box.debugMode = false;
    return true;
  }

// void move(Vector2 ds){
//   position.add(ds);
// }
//
// void rotateTo(double deg){
//   angle = deg;
// }

}
