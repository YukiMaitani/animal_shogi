import 'package:animal_shogi/foundation/colors.dart';
import 'package:animal_shogi/pages/draw/animal_custom_painter.dart';
import 'package:animal_shogi/pages/draw/drawing_controller.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:custom_pop_up_menu/custom_pop_up_menu.dart';
import 'package:logger/logger.dart';

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
        onPanEnd: (_) {
          ref.read(drawingControllerProvider).addDrawHistory();
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

  Widget _buildPen() {
    return HookConsumer(builder: (context, ref, child) {
      final drawingMode = ref
          .watch(drawingControllerProvider.select((value) => value.drawMode));
      final isSelected = drawingMode == DrawMode.pen;
      return CustomPopupMenu(
        barrierColor: Colors.transparent,
        arrowSize: 20,
        arrowColor: paletteSliderBackgroundColor,
        menuBuilder: () {
          return Container(
            height: 48,
            width: 320,
            decoration: BoxDecoration(
                color: paletteSliderBackgroundColor,
                borderRadius: BorderRadius.circular(20)),
            child: HookConsumer(
              builder: (context, ref, child) {
                final penWidth = ref.watch(drawingControllerProvider
                    .select((value) => value.penWidth));
                return Slider(
                  value: penWidth,
                  onChanged: (value) {
                    ref.read(drawingControllerProvider).setPenWidth(value);
                  },
                  thumbColor: paletteSliderColor,
                  activeColor: paletteSliderColor,
                  divisions: 5,
                  min: 1,
                  max: 30,
                );
              },
            ),
          );
        },
        pressType: PressType.singleClick,
        child: GestureDetector(
          onTap: isSelected
              ? null
              : () {
                  ref.read(drawingControllerProvider).setDrawMode(DrawMode.pen);
                },
          child: Assets.images.draw.brush.svg(
              height: 40,
              colorFilter: ColorFilter.mode(
                  isSelected ? paletteButtonOnColor : paletteButtonOffColor,
                  BlendMode.srcIn)),
        ),
      );
    });
  }

  Widget _buildEraser() {
    return HookConsumer(builder: (context, ref, child) {
      final drawingMode = ref
          .watch(drawingControllerProvider.select((value) => value.drawMode));
      final isSelected = drawingMode == DrawMode.pixelEraser ||
          drawingMode == DrawMode.objectEraser;
      return CustomPopupMenu(
        barrierColor: Colors.transparent,
        arrowSize: 20,
        arrowColor: paletteSliderBackgroundColor,
        menuBuilder: () {
          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            height: 96,
            width: 320,
            decoration: BoxDecoration(
                color: paletteSliderBackgroundColor,
                borderRadius: BorderRadius.circular(20)),
            child: DefaultTabController(
              length: 2,
              child: Builder(builder: (context) {
                final tabController = DefaultTabController.of(context);
                final currentEraserTabIndex =
                    ref.watch(drawingControllerProvider).currentEraserTabIndex;
                tabController.index = currentEraserTabIndex;
                return Column(
                  children: [
                    SizedBox(
                      height: 48,
                      child: TabBar(
                        indicatorColor: paletteButtonOnColor,
                        tabs: const [
                          Tab(
                            child: Text(
                              'ピクセル消しゴム',
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                          Tab(
                            child: Text(
                              'オブジェクト消しゴム',
                              style: TextStyle(fontSize: 12),
                            ),
                          )
                        ],
                        onTap: (index) {
                          ref
                              .read(drawingControllerProvider)
                              .setEraserMode(index);
                        },
                      ),
                    ),
                    SizedBox(
                      height: 48,
                      child: TabBarView(
                        children: [
                          HookConsumer(
                            builder: (context, ref, child) {
                              final eraserWidth = ref.watch(
                                  drawingControllerProvider
                                      .select((value) => value.eraserWidth));
                              return Slider(
                                value: eraserWidth,
                                onChanged: (value) {
                                  ref
                                      .read(drawingControllerProvider)
                                      .setEraserWidth(value);
                                },
                                activeColor: paletteSliderColor,
                                //thumbColor: paletteSliderColor,
                                divisions: 5,
                                min: 1,
                                max: 30,
                              );
                            },
                          ),
                          Center(
                            child: AspectRatio(
                              aspectRatio: 1,
                              child: Container(
                                margin: const EdgeInsets.all(4),
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(10)),
                                child: const Center(
                                  child: Text(
                                    '×',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 32),
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                );
              }),
            ),
          );
        },
        pressType: PressType.singleClick,
        child: GestureDetector(
          onTap: isSelected
              ? null
              : () {
                  final currentEraserTabIndex =
                      ref.read(drawingControllerProvider).currentEraserTabIndex;
                  ref
                      .read(drawingControllerProvider)
                      .setEraserMode(currentEraserTabIndex);
                },
          child: Assets.images.draw.eraser.svg(
              height: 40,
              colorFilter: ColorFilter.mode(
                  isSelected ? paletteButtonOnColor : paletteButtonOffColor,
                  BlendMode.srcIn)),
        ),
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

  Widget _buildBackForward() {
    return HookConsumer(builder: (context, ref, child) {
      return Row(
        children: [
          GestureDetector(
            onTap: () {
              ref.read(drawingControllerProvider).undo();
            },
            child: Assets.images.draw.back.svg(
              height: 24,
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          GestureDetector(
            onTap: () {
              ref.read(drawingControllerProvider).redo();
            },
            child: Assets.images.draw.forward.svg(
              height: 24,
            ),
          ),
        ],
      );
    });
  }
}
