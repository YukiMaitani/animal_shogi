import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'draw_info.freezed.dart';

part 'draw_info.g.dart';


@freezed
class DrawInfo with _$DrawInfo {
  const factory DrawInfo({
    @JsonKey(name: 'draw_type') required DrawType drawType,
    @JsonKey(includeFromJson: false, includeToJson: false) Paint? paint,
    @JsonKey(includeFromJson: false, includeToJson: false) List<Offset?>? offsets,
    String? text,
    @JsonKey(includeFromJson: false, includeToJson: false) Offset? leftTopOffset,
    double? height,
    double? width,
  }) = _DrawInfo;

  factory DrawInfo.fromJson(Map<String, dynamic> json) => _$DrawInfoFromJson(json);
}

enum DrawType {
  pen, eraser, text
}