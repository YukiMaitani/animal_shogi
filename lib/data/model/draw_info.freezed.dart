// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'draw_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DrawInfo _$DrawInfoFromJson(Map<String, dynamic> json) {
  return _DrawInfo.fromJson(json);
}

/// @nodoc
mixin _$DrawInfo {
  @JsonKey(name: 'draw_type')
  DrawType get drawType => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  Paint? get paint => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<Offset?>? get offsets => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  Offset? get leftTopOffset => throw _privateConstructorUsedError;
  double? get height => throw _privateConstructorUsedError;
  double? get width => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DrawInfoCopyWith<DrawInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DrawInfoCopyWith<$Res> {
  factory $DrawInfoCopyWith(DrawInfo value, $Res Function(DrawInfo) then) =
      _$DrawInfoCopyWithImpl<$Res, DrawInfo>;
  @useResult
  $Res call(
      {@JsonKey(name: 'draw_type')
          DrawType drawType,
      @JsonKey(includeFromJson: false, includeToJson: false)
          Paint? paint,
      @JsonKey(includeFromJson: false, includeToJson: false)
          List<Offset?>? offsets,
      String? text,
      @JsonKey(includeFromJson: false, includeToJson: false)
          Offset? leftTopOffset,
      double? height,
      double? width});
}

/// @nodoc
class _$DrawInfoCopyWithImpl<$Res, $Val extends DrawInfo>
    implements $DrawInfoCopyWith<$Res> {
  _$DrawInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? drawType = null,
    Object? paint = freezed,
    Object? offsets = freezed,
    Object? text = freezed,
    Object? leftTopOffset = freezed,
    Object? height = freezed,
    Object? width = freezed,
  }) {
    return _then(_value.copyWith(
      drawType: null == drawType
          ? _value.drawType
          : drawType // ignore: cast_nullable_to_non_nullable
              as DrawType,
      paint: freezed == paint
          ? _value.paint
          : paint // ignore: cast_nullable_to_non_nullable
              as Paint?,
      offsets: freezed == offsets
          ? _value.offsets
          : offsets // ignore: cast_nullable_to_non_nullable
              as List<Offset?>?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      leftTopOffset: freezed == leftTopOffset
          ? _value.leftTopOffset
          : leftTopOffset // ignore: cast_nullable_to_non_nullable
              as Offset?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DrawInfoCopyWith<$Res> implements $DrawInfoCopyWith<$Res> {
  factory _$$_DrawInfoCopyWith(
          _$_DrawInfo value, $Res Function(_$_DrawInfo) then) =
      __$$_DrawInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'draw_type')
          DrawType drawType,
      @JsonKey(includeFromJson: false, includeToJson: false)
          Paint? paint,
      @JsonKey(includeFromJson: false, includeToJson: false)
          List<Offset?>? offsets,
      String? text,
      @JsonKey(includeFromJson: false, includeToJson: false)
          Offset? leftTopOffset,
      double? height,
      double? width});
}

/// @nodoc
class __$$_DrawInfoCopyWithImpl<$Res>
    extends _$DrawInfoCopyWithImpl<$Res, _$_DrawInfo>
    implements _$$_DrawInfoCopyWith<$Res> {
  __$$_DrawInfoCopyWithImpl(
      _$_DrawInfo _value, $Res Function(_$_DrawInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? drawType = null,
    Object? paint = freezed,
    Object? offsets = freezed,
    Object? text = freezed,
    Object? leftTopOffset = freezed,
    Object? height = freezed,
    Object? width = freezed,
  }) {
    return _then(_$_DrawInfo(
      drawType: null == drawType
          ? _value.drawType
          : drawType // ignore: cast_nullable_to_non_nullable
              as DrawType,
      paint: freezed == paint
          ? _value.paint
          : paint // ignore: cast_nullable_to_non_nullable
              as Paint?,
      offsets: freezed == offsets
          ? _value._offsets
          : offsets // ignore: cast_nullable_to_non_nullable
              as List<Offset?>?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      leftTopOffset: freezed == leftTopOffset
          ? _value.leftTopOffset
          : leftTopOffset // ignore: cast_nullable_to_non_nullable
              as Offset?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DrawInfo with DiagnosticableTreeMixin implements _DrawInfo {
  const _$_DrawInfo(
      {@JsonKey(name: 'draw_type')
          required this.drawType,
      @JsonKey(includeFromJson: false, includeToJson: false)
          this.paint,
      @JsonKey(includeFromJson: false, includeToJson: false)
          final List<Offset?>? offsets,
      this.text,
      @JsonKey(includeFromJson: false, includeToJson: false)
          this.leftTopOffset,
      this.height,
      this.width})
      : _offsets = offsets;

  factory _$_DrawInfo.fromJson(Map<String, dynamic> json) =>
      _$$_DrawInfoFromJson(json);

  @override
  @JsonKey(name: 'draw_type')
  final DrawType drawType;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final Paint? paint;
  final List<Offset?>? _offsets;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<Offset?>? get offsets {
    final value = _offsets;
    if (value == null) return null;
    if (_offsets is EqualUnmodifiableListView) return _offsets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? text;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final Offset? leftTopOffset;
  @override
  final double? height;
  @override
  final double? width;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DrawInfo(drawType: $drawType, paint: $paint, offsets: $offsets, text: $text, leftTopOffset: $leftTopOffset, height: $height, width: $width)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DrawInfo'))
      ..add(DiagnosticsProperty('drawType', drawType))
      ..add(DiagnosticsProperty('paint', paint))
      ..add(DiagnosticsProperty('offsets', offsets))
      ..add(DiagnosticsProperty('text', text))
      ..add(DiagnosticsProperty('leftTopOffset', leftTopOffset))
      ..add(DiagnosticsProperty('height', height))
      ..add(DiagnosticsProperty('width', width));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DrawInfo &&
            (identical(other.drawType, drawType) ||
                other.drawType == drawType) &&
            (identical(other.paint, paint) || other.paint == paint) &&
            const DeepCollectionEquality().equals(other._offsets, _offsets) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.leftTopOffset, leftTopOffset) ||
                other.leftTopOffset == leftTopOffset) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.width, width) || other.width == width));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      drawType,
      paint,
      const DeepCollectionEquality().hash(_offsets),
      text,
      leftTopOffset,
      height,
      width);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DrawInfoCopyWith<_$_DrawInfo> get copyWith =>
      __$$_DrawInfoCopyWithImpl<_$_DrawInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DrawInfoToJson(
      this,
    );
  }
}

abstract class _DrawInfo implements DrawInfo {
  const factory _DrawInfo(
      {@JsonKey(name: 'draw_type')
          required final DrawType drawType,
      @JsonKey(includeFromJson: false, includeToJson: false)
          final Paint? paint,
      @JsonKey(includeFromJson: false, includeToJson: false)
          final List<Offset?>? offsets,
      final String? text,
      @JsonKey(includeFromJson: false, includeToJson: false)
          final Offset? leftTopOffset,
      final double? height,
      final double? width}) = _$_DrawInfo;

  factory _DrawInfo.fromJson(Map<String, dynamic> json) = _$_DrawInfo.fromJson;

  @override
  @JsonKey(name: 'draw_type')
  DrawType get drawType;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  Paint? get paint;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<Offset?>? get offsets;
  @override
  String? get text;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  Offset? get leftTopOffset;
  @override
  double? get height;
  @override
  double? get width;
  @override
  @JsonKey(ignore: true)
  _$$_DrawInfoCopyWith<_$_DrawInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
