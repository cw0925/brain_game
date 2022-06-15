import 'package:brain_game/component/brain.dart';
import 'package:brain_game/component/menu.dart';
import 'package:brain_game/component/mode.dart';
import 'package:brain_game/component/user.dart';
import 'package:brain_game/component/version.dart';
import 'package:flame/components.dart';
import 'package:flame/game.dart';

class BrainGame extends FlameGame with HasTappables{
  @override
  Future<void>? onLoad() async{
    // TODO: implement onLoad
    ///背景
    final background = SpriteComponent(sprite: await Sprite.load('bg_home.png'),size: camera.gameSize);
    add(background);
    ///用户信息
    User user = User();
    add(user);
    /// 脑力值
    Brain brain = Brain();
    add(brain);
    ///版本
    Version version = Version();
    add(version);
    /// skin
    final skin = SpriteComponent(sprite: await Sprite.load('400058.png'),size: Vector2(60,60));
    skin.position.x = 10;
    skin.position.y = camera.gameSize.y - 70;
    add(skin);
    /// 模式
    for(int i=0;i<4;i++){
      Mode mode = Mode();
      mode.position.x = (canvasSize.x - 50) / 4  * i + 10 * (i + 1);
      mode.position.y = 100;
      add(mode);
    }
    ///底部菜单
    for(int i=0;i<3;i++){
      Menu menu = Menu();
      menu.position.x = 120 + camera.gameSize.x / 3 * i;
      menu.position.y = camera.gameSize.y - 40;
      add(menu);
    }
  }

}