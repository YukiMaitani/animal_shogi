// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'piece.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Piece {
  PieceType get pieceType => throw _privateConstructorUsedError;
  int get row => throw _privateConstructorUsedError;
  int get column => throw _privateConstructorUsedError;
  Player get player => throw _privateConstructorUsedError;
  List<Movement> get movements => throw _privateConstructorUsedError;
  Image get image => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PieceCopyWith<Piece> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PieceCopyWith<$Res> {
  factory $PieceCopyWith(Piece value, $Res Function(Piece) then) =
      _$PieceCopyWithImpl<$Res, Piece>;
  @useResult
  $Res call(
      {PieceType pieceType,
      int row,
      int column,
      Player player,
      List<Movement> movements,
      Image image});
}

/// @nodoc
class _$PieceCopyWithImpl<$Res, $Val extends Piece>
    implements $PieceCopyWith<$Res> {
  _$PieceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pieceType = null,
    Object? row = null,
    Object? column = null,
    Object? player = null,
    Object? movements = null,
    Object? image = null,
  }) {
    return _then(_value.copyWith(
      pieceType: null == pieceType
          ? _value.pieceType
          : pieceType // ignore: cast_nullable_to_non_nullable
              as PieceType,
      row: null == row
          ? _value.row
          : row // ignore: cast_nullable_to_non_nullable
              as int,
      column: null == column
          ? _value.column
          : column // ignore: cast_nullable_to_non_nullable
              as int,
      player: null == player
          ? _value.player
          : player // ignore: cast_nullable_to_non_nullable
              as Player,
      movements: null == movements
          ? _value.movements
          : movements // ignore: cast_nullable_to_non_nullable
              as List<Movement>,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as Image,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PieceCopyWith<$Res> implements $PieceCopyWith<$Res> {
  factory _$$_PieceCopyWith(_$_Piece value, $Res Function(_$_Piece) then) =
      __$$_PieceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PieceType pieceType,
      int row,
      int column,
      Player player,
      List<Movement> movements,
      Image image});
}

/// @nodoc
class __$$_PieceCopyWithImpl<$Res> extends _$PieceCopyWithImpl<$Res, _$_Piece>
    implements _$$_PieceCopyWith<$Res> {
  __$$_PieceCopyWithImpl(_$_Piece _value, $Res Function(_$_Piece) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pieceType = null,
    Object? row = null,
    Object? column = null,
    Object? player = null,
    Object? movements = null,
    Object? image = null,
  }) {
    return _then(_$_Piece(
      pieceType: null == pieceType
          ? _value.pieceType
          : pieceType // ignore: cast_nullable_to_non_nullable
              as PieceType,
      row: null == row
          ? _value.row
          : row // ignore: cast_nullable_to_non_nullable
              as int,
      column: null == column
          ? _value.column
          : column // ignore: cast_nullable_to_non_nullable
              as int,
      player: null == player
          ? _value.player
          : player // ignore: cast_nullable_to_non_nullable
              as Player,
      movements: null == movements
          ? _value._movements
          : movements // ignore: cast_nullable_to_non_nullable
              as List<Movement>,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as Image,
    ));
  }
}

/// @nodoc

class _$_Piece extends _Piece with DiagnosticableTreeMixin {
  const _$_Piece(
      {required this.pieceType,
      required this.row,
      required this.column,
      required this.player,
      required final List<Movement> movements,
      required this.image})
      : _movements = movements,
        super._();

  @override
  final PieceType pieceType;
  @override
  final int row;
  @override
  final int column;
  @override
  final Player player;
  final List<Movement> _movements;
  @override
  List<Movement> get movements {
    if (_movements is EqualUnmodifiableListView) return _movements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_movements);
  }

  @override
  final Image image;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Piece(pieceType: $pieceType, row: $row, column: $column, player: $player, movements: $movements, image: $image)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Piece'))
      ..add(DiagnosticsProperty('pieceType', pieceType))
      ..add(DiagnosticsProperty('row', row))
      ..add(DiagnosticsProperty('column', column))
      ..add(DiagnosticsProperty('player', player))
      ..add(DiagnosticsProperty('movements', movements))
      ..add(DiagnosticsProperty('image', image));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Piece &&
            (identical(other.pieceType, pieceType) ||
                other.pieceType == pieceType) &&
            (identical(other.row, row) || other.row == row) &&
            (identical(other.column, column) || other.column == column) &&
            (identical(other.player, player) || other.player == player) &&
            const DeepCollectionEquality()
                .equals(other._movements, _movements) &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pieceType, row, column, player,
      const DeepCollectionEquality().hash(_movements), image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PieceCopyWith<_$_Piece> get copyWith =>
      __$$_PieceCopyWithImpl<_$_Piece>(this, _$identity);
}

abstract class _Piece extends Piece {
  const factory _Piece(
      {required final PieceType pieceType,
      required final int row,
      required final int column,
      required final Player player,
      required final List<Movement> movements,
      required final Image image}) = _$_Piece;
  const _Piece._() : super._();

  @override
  PieceType get pieceType;
  @override
  int get row;
  @override
  int get column;
  @override
  Player get player;
  @override
  List<Movement> get movements;
  @override
  Image get image;
  @override
  @JsonKey(ignore: true)
  _$$_PieceCopyWith<_$_Piece> get copyWith =>
      throw _privateConstructorUsedError;
}
