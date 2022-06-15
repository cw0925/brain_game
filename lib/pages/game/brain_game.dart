import 'package:brain_game/component/user.dart';
import 'package:flame/components.dart';
import 'package:flame/game.dart';

class BrainGame extends FlameGame {
  @override
  Future<void>? onLoad() async{
    // TODO: implement onLoad
    ///背景
    final background = SpriteComponent(sprite: await Sprite.load('bg_home.png'),size: camera.gameSize);
    await add(background);
    ///用户信息
    User user = User(sprite: await Sprite.load('icon_create_woman.png'));
    add(user);
  }
}