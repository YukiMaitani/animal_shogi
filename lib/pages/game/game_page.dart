import 'package:animal_shogi/pages/game/board_custom_painter.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../foundation/colors.dart';

class GamePage extends HookConsumerWidget {
  const GamePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: _buildBody(),
      backgroundColor: gamePageBodyColor,
    );
  }

  Widget _buildBody() {
    return Column(
      children: [
        const Spacer(),
        _buildBoard(),
        const Spacer(),
      ],
    );
  }

  Widget _buildBoard() {
    return HookConsumer(builder: (context, ref, child) {
      final baseWidth = MediaQuery.of(context).size.width * 0.8;
      final baseHeight = baseWidth / 3 * 4;
      return Center(
        child: Container(
          width: baseWidth,
          height: baseHeight,
          color: boardBodyColor,
          child: CustomPaint(
            painter: BoardCustomPainter(),
          ),
        ),
      );
    });
  }
}
