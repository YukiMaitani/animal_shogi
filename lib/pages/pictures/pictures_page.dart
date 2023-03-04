import 'package:animal_shogi/main.dart';
import 'package:animal_shogi/pages/route/app_route.gr.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PicturesPage extends HookConsumerWidget {
  const PicturesPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('お絵描き一覧'),
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
        appRouter.push(const DrawRoute());
      },
    );
  }
}
