import 'dart:ui';

import 'package:animal_shogi/pages/draw/drawing_controller.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'draw_info.freezed.dart';

//part 'draw_info.g.dart';


@freezed
class DrawInfo with _$DrawInfo {
  const factory DrawInfo({
    required DrawType drawType,
    Paint? paint,
    List<Offset?>? offsets,
    String? text,
    Offset? leftTopOffset,
    double? height,
    double? width,
  }) = _DrawInfo;

  //factory DrawInfo.fromJson(Map<String, Object?> json) => _$DrawInfoFromJson(json);
}

enum DrawType {
  pen, eraser, text
}