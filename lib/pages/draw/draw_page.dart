import 'package:animal_shogi/foundation/colors.dart';
import 'package:animal_shogi/pages/draw/animal_custom_painter.dart';
import 'package:animal_shogi/pages/draw/drawing_controller.dart';
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
        Expanded(child: _buildCanvas()),
        _buildPalette(),
      ],
    );
  }

  Widget _buildCanvas() {
    return HookConsumer(builder: (context, ref, child) {
      final controller = ref.watch(drawingControllerProvider);
      return GestureDetector(
        child: CustomPaint(
            painter: AnimalCustomPainter(controller), child: Container()),
        onPanStart: (details) {
          ref
              .read(drawingControllerProvider)
              .pathPanStart(details.localPosition);
        },
        onPanUpdate: (details) {
          ref
              .read(drawingControllerProvider)
              .pathPanUpdate(details.localPosition);
        },
      );
    });
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
            _buildColorPicker(),
            _buildBackForward(),
          ],
        ),
      ),
    );
  }

  Widget _buildBackForward() {
    return HookConsumer(builder: (context, ref, child) {
      return Row(
        children: [
          GestureDetector(
            onTap: () {},
            child: Assets.images.draw.back.svg(
              height: 24,
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          GestureDetector(
            onTap: () {},
            child: Assets.images.draw.forward.svg(
              height: 24,
            ),
          ),
        ],
      );
    });
  }

  Widget _buildPen() {
    return HookConsumer(builder: (context, ref, child) {
      final drawingMode = ref
          .watch(drawingControllerProvider.select((value) => value.drawMode));
      final isSelected = drawingMode == DrawMode.pen;
      return GestureDetector(
        onTap: () {
          ref.read(drawingControllerProvider).setDrawMode(DrawMode.pen);
        },
        child: Assets.images.draw.brush.svg(
            height: 40,
            colorFilter: ColorFilter.mode(
                isSelected ? paletteButtonOnColor : paletteButtonOffColor,
                BlendMode.srcIn)),
      );
    });
  }

  Widget _buildEraser() {
    return HookConsumer(builder: (context, ref, child) {
      final drawingMode = ref
          .watch(drawingControllerProvider.select((value) => value.drawMode));
      final isSelected = drawingMode == DrawMode.eraser;
      return GestureDetector(
        onTap: () {
          ref.read(drawingControllerProvider).setDrawMode(DrawMode.eraser);
        },
        child: Assets.images.draw.eraser.svg(
            height: 40,
            colorFilter: ColorFilter.mode(
                isSelected ? paletteButtonOnColor : paletteButtonOffColor,
                BlendMode.srcIn)),
      );
    });
  }

  Widget _buildText() {
    return HookConsumer(builder: (context, ref, child) {
      final drawingMode = ref
          .watch(drawingControllerProvider.select((value) => value.drawMode));
      final isSelected = drawingMode == DrawMode.text;
      return GestureDetector(
        onTap: () {
          ref.read(drawingControllerProvider).setDrawMode(DrawMode.text);
        },
        child: Text(
          'あ',
          style: TextStyle(
              color: isSelected ? paletteButtonOnColor : paletteButtonOffColor,
              fontSize: 40),
        ),
      );
    });
  }

  Widget _buildColorPicker() {
    return HookConsumer(builder: (context, ref, child) {
      final selectedColor =
          ref.watch(drawingControllerProvider.select((value) => value.color));
      return GestureDetector(
          onTap: () {
            ref
                .read(drawingControllerProvider)
                .setColor(Colors.lightBlueAccent);
          },
          child: Assets.images.draw.palette.svg(
            height: 40,
            colorFilter: ColorFilter.mode(selectedColor, BlendMode.srcIn),
          ));
    });
  }
}
