// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'draw_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DrawInfo _$$_DrawInfoFromJson(Map<String, dynamic> json) => _$_DrawInfo(
      drawType: $enumDecode(_$DrawTypeEnumMap, json['draw_type']),
      text: json['text'] as String?,
      height: (json['height'] as num?)?.toDouble(),
      width: (json['width'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_DrawInfoToJson(_$_DrawInfo instance) =>
    <String, dynamic>{
      'draw_type': _$DrawTypeEnumMap[instance.drawType]!,
      'text': instance.text,
      'height': instance.height,
      'width': instance.width,
    };

const _$DrawTypeEnumMap = {
  DrawType.pen: 'pen',
  DrawType.eraser: 'eraser',
  DrawType.text: 'text',
};
