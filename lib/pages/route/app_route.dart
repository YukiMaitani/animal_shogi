import 'package:animal_shogi/pages/game/game_page.dart';
import 'package:animal_shogi/pages/setting/setting_page.dart';
import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';

import '../draw/draw_page.dart';
import '../drawings/drawings_page.dart';
import '../tab/tab_page.dart';

@MaterialAutoRouter(replaceInRouteName: 'Page,Route', routes: <AutoRoute>[
  AutoRoute(page: TabPage, initial: true, children: [
    AutoRoute(page: DrawingsPage),
    AutoRoute(page: GamePage),
    AutoRoute(page: SettingPage),
  ]),
  AutoRoute(page: DrawPage),
])
class $AppRouter {}
