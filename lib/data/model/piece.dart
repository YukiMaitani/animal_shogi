import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'piece.freezed.dart';
// part 'piece.g.dart';

@freezed
class Piece with _$Piece {
  const factory Piece(
      {required PieceType pieceType,
      required int row,
      required int column,
      required Player player,
      required List<Movement> movements,
      required Image image}) = _Piece;

  Piece._();

  factory Piece.lion(
          {required int row,
          required int column,
          required Player player,
          required Image image}) =>
      Piece(
          pieceType: PieceType.lion,
          row: row,
          column: column,
          player: player,
          movements: Movement.values,
          image: image);

  factory Piece.giraffe(
          {required int row,
          required int column,
          required Player player,
          required Image image}) =>
      Piece(
          pieceType: PieceType.giraffe,
          row: row,
          column: column,
          player: player,
          movements: [
            Movement.up,
            Movement.down,
            Movement.right,
            Movement.left
          ],
          image: image);

  factory Piece.elephant(
          {required int row,
          required int column,
          required Player player,
          required Image image}) =>
      Piece(
          pieceType: PieceType.elephant,
          row: row,
          column: column,
          player: player,
          movements: [
            Movement.upRight,
            Movement.upLeft,
            Movement.downRight,
            Movement.downLeft
          ],
          image: image);

  factory Piece.chick(
          {required int row,
          required int column,
          required Player player,
          required Image image}) =>
      Piece(
          pieceType: PieceType.chick,
          row: row,
          column: column,
          player: player,
          movements: [
            Movement.up,
          ],
          image: image);

  factory Piece.chicken(
          {required int row,
          required int column,
          required Player player,
          required Image image}) =>
      Piece(
          pieceType: PieceType.chicken,
          row: row,
          column: column,
          player: player,
          movements: [
            Movement.up,
            Movement.right,
            Movement.left,
            Movement.down,
            Movement.upRight,
            Movement.upLeft,
          ],
          image: image);

// factory Piece.fromJson(Map<String, dynamic> json) =>
//     _$PieceFromJson(json);
}

enum PieceType {
  lion,
  giraffe,
  elephant,
  chick(promotedPieceType: PieceType.chicken),
  chicken;

  const PieceType({this.promotedPieceType});

  final PieceType? promotedPieceType;
}

enum Player {
  first(moveConst: 1),
  second(moveConst: -1);

  const Player({required this.moveConst});

  final int moveConst;
}

enum Movement {
  up(moveRow: 0, moveColumn: 1),
  down(moveRow: 0, moveColumn: -1),
  right(moveRow: 1, moveColumn: 0),
  left(moveRow: -1, moveColumn: 0),
  upRight(moveRow: 1, moveColumn: 1),
  upLeft(moveRow: 1, moveColumn: -1),
  downRight(moveRow: -1, moveColumn: 1),
  downLeft(moveRow: -1, moveColumn: -1);

  const Movement({required this.moveRow, required this.moveColumn});

  final int moveRow;
  final int moveColumn;
}
