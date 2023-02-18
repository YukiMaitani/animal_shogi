import 'package:animal_shogi/foundation/colors.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../gen/assets.gen.dart';

class DrawPage extends HookConsumerWidget {
  const DrawPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Column(
      children: [
        Expanded(child: _buildDrawing()),
        _buildPalette(),
      ],
    );
  }

  Widget _buildDrawing() {
    return Container();
  }

  Widget _buildPalette() {
    return Container(
      height: 72,
      color: paletteBodyColor,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildPen(),
            _buildEraser(),
            _buildText(),
            _buildColorPicker()
          ],
        ),
      ),
    );
  }

  Widget _buildPen() {
    return HookConsumer(builder: (context, ref, child) {
      return Assets.images.draw.brush.svg(
          height: 40,
          colorFilter:
              const ColorFilter.mode(paletteButtonOffColor, BlendMode.srcIn));
    });
  }

  Widget _buildEraser() {
    return HookConsumer(builder: (context, ref, child) {
      return Assets.images.draw.eraser.svg(
          height: 40,
          colorFilter:
              const ColorFilter.mode(paletteButtonOffColor, BlendMode.srcIn));
    });
  }

  Widget _buildText() {
    return HookConsumer(builder: (context, ref, child) {
      return const Text(
        'あ',
        style: TextStyle(color: paletteButtonOffColor, fontSize: 40),
      );
    });
  }

  Widget _buildColorPicker() {
    return HookConsumer(builder: (context, ref, child) {
      return Assets.images.draw.palette.svg(
          height: 40,
          colorFilter:
              const ColorFilter.mode(paletteButtonOffColor, BlendMode.srcIn));
    });
  }
}
