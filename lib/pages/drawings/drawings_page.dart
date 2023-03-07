import 'package:animal_shogi/foundation/enum.dart';
import 'package:animal_shogi/main.dart';
import 'package:animal_shogi/pages/route/app_route.gr.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../setting/setting_view_model.dart';

class DrawingsPage extends HookConsumerWidget {
  const DrawingsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final letterType =
        ref.watch(settingProvider.select((value) => value.letterType));
    return Scaffold(
      appBar: AppBar(
        title: Text(letterType == LetterType.kanji ? 'お絵描き一覧' : 'おえかきいちらん'),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: _buildGoToDrawPageButton(),
          )
        ],
      ),
    );
  }

  Widget _buildGoToDrawPageButton() {
    return GestureDetector(
      child: const Icon(
        Icons.add_circle_outline,
        size: 40,
      ),
      onTap: () {
        appRouter.push(DrawRoute());
      },
    );
  }
}
