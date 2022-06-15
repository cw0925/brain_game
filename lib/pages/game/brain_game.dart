import 'package:brain_game/component/brain.dart';
import 'package:brain_game/component/menu.dart';
import 'package:brain_game/component/user.dart';
import 'package:brain_game/component/version.dart';
import 'package:flame/components.dart';
import 'package:flame/game.dart';

class BrainGame extends FlameGame {
  @override
  Future<void>? onLoad() async{
    // TODO: implement onLoad
    ///背景
    final background = SpriteComponent(sprite: await Sprite.load('bg_home.png'),size: camera.gameSize);
    add(background);
    ///用户信息
    User user = User(sprite: await Sprite.load('icon_create_woman.png'));
    add(user);
    /// 脑力值
    Brain brain = Brain(sprite: await Sprite.load('icon_create_woman.png'));
    add(brain);
    ///版本
    Version version = Version(sprite: await Sprite.load('icon_create_woman.png'));
    add(version);
    /// skin
    final skin = SpriteComponent(sprite: await Sprite.load('400058.png'),size: Vector2(60,60));
    skin.position.x = 10;
    skin.position.y = camera.gameSize.y - 70;
    add(skin);

    for(int i=0;i<3;i++){
      Menu menu = Menu(sprite: await Sprite.load('400058.png'));
      menu.position.x = 120 + camera.gameSize.x / 3 * i;
      menu.position.y = camera.gameSize.y - 40;
      add(menu);
    }
  }
}