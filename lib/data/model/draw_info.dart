import 'dart:ui';

import 'package:animal_shogi/pages/draw/drawing_controller.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'draw_info.freezed.dart';


@freezed
class DrawInfo with _$DrawInfo {
  const factory DrawInfo({
    DrawMode? drawMode,
    Paint? paint,
    List<Offset?>? offset,
    String? text
  }) = _DrawInfo;

}