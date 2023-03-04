import 'package:animal_shogi/pages/route/app_route.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TabPage extends HookConsumerWidget {
  const TabPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AutoTabsScaffold(
        routes: const [
          PicturesRoute(), GameRoute(), SettingRoute(),
        ],
      bottomNavigationBuilder: (context, tabsRouter) {
          return BottomNavigationBar(
            currentIndex: tabsRouter.activeIndex,
              onTap: tabsRouter.setActiveIndex,
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.draw), label: 'お絵かき'),
                BottomNavigationBarItem(icon: Icon(Icons.videogame_asset), label: '将棋'),
                BottomNavigationBarItem(icon: Icon(Icons.settings), label: '設定'),
              ]
          );
      },
    );
  }

}