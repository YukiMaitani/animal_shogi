import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final drawingsProvider = ChangeNotifierProvider.autoDispose((ref) => DrawingsViewModel());

class DrawingsViewModel extends ChangeNotifier {

}