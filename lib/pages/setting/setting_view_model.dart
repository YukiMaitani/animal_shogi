import 'package:animal_shogi/foundation/enum.dart';
import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final settingProvider = ChangeNotifierProvider((ref) => SettingViewModel());

class SettingViewModel extends ChangeNotifier {
  LetterType _letterType = LetterType.hiragana;

  LetterType get letterType => _letterType;

  set letterType(LetterType value) {
    _letterType = value;
    notifyListeners();
  }
}