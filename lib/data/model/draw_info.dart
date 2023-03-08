import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'draw_info.freezed.dart';

//part 'draw_info.g.dart';


@freezed
class DrawInfo with _$DrawInfo {
  const factory DrawInfo({
    @JsonKey(name: 'draw_type') required DrawType drawType,
    @JsonKey(name:'paint') Paint? paint,
    @JsonKey(name:'offsets') List<Offset?>? offsets,
    String? text,
    @JsonKey(name:'left_top_offset') Offset? leftTopOffset,
    double? height,
    double? width,
  }) = _DrawInfo;

  factory DrawInfo.fromJson(Map<String, dynamic> json) => _$DrawInfoFromJson(json);
}

enum DrawType {
  pen, eraser, text
}