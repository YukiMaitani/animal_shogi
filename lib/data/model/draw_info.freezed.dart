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

/// @nodoc
mixin _$DrawInfo {
  DrawMode? get drawMode => throw _privateConstructorUsedError;
  Paint? get paint => throw _privateConstructorUsedError;
  List<Offset?>? get offset => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;

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
      {DrawMode? drawMode, Paint? paint, List<Offset?>? offset, String? text});
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
    Object? drawMode = freezed,
    Object? paint = freezed,
    Object? offset = freezed,
    Object? text = freezed,
  }) {
    return _then(_value.copyWith(
      drawMode: freezed == drawMode
          ? _value.drawMode
          : drawMode // ignore: cast_nullable_to_non_nullable
              as DrawMode?,
      paint: freezed == paint
          ? _value.paint
          : paint // ignore: cast_nullable_to_non_nullable
              as Paint?,
      offset: freezed == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as List<Offset?>?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
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
      {DrawMode? drawMode, Paint? paint, List<Offset?>? offset, String? text});
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
    Object? drawMode = freezed,
    Object? paint = freezed,
    Object? offset = freezed,
    Object? text = freezed,
  }) {
    return _then(_$_DrawInfo(
      drawMode: freezed == drawMode
          ? _value.drawMode
          : drawMode // ignore: cast_nullable_to_non_nullable
              as DrawMode?,
      paint: freezed == paint
          ? _value.paint
          : paint // ignore: cast_nullable_to_non_nullable
              as Paint?,
      offset: freezed == offset
          ? _value._offset
          : offset // ignore: cast_nullable_to_non_nullable
              as List<Offset?>?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_DrawInfo with DiagnosticableTreeMixin implements _DrawInfo {
  const _$_DrawInfo(
      {this.drawMode, this.paint, final List<Offset?>? offset, this.text})
      : _offset = offset;

  @override
  final DrawMode? drawMode;
  @override
  final Paint? paint;
  final List<Offset?>? _offset;
  @override
  List<Offset?>? get offset {
    final value = _offset;
    if (value == null) return null;
    if (_offset is EqualUnmodifiableListView) return _offset;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? text;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DrawInfo(drawMode: $drawMode, paint: $paint, offset: $offset, text: $text)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DrawInfo'))
      ..add(DiagnosticsProperty('drawMode', drawMode))
      ..add(DiagnosticsProperty('paint', paint))
      ..add(DiagnosticsProperty('offset', offset))
      ..add(DiagnosticsProperty('text', text));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DrawInfo &&
            (identical(other.drawMode, drawMode) ||
                other.drawMode == drawMode) &&
            (identical(other.paint, paint) || other.paint == paint) &&
            const DeepCollectionEquality().equals(other._offset, _offset) &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, drawMode, paint,
      const DeepCollectionEquality().hash(_offset), text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DrawInfoCopyWith<_$_DrawInfo> get copyWith =>
      __$$_DrawInfoCopyWithImpl<_$_DrawInfo>(this, _$identity);
}

abstract class _DrawInfo implements DrawInfo {
  const factory _DrawInfo(
      {final DrawMode? drawMode,
      final Paint? paint,
      final List<Offset?>? offset,
      final String? text}) = _$_DrawInfo;

  @override
  DrawMode? get drawMode;
  @override
  Paint? get paint;
  @override
  List<Offset?>? get offset;
  @override
  String? get text;
  @override
  @JsonKey(ignore: true)
  _$$_DrawInfoCopyWith<_$_DrawInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
