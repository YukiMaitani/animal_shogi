import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final picturesProvider = ChangeNotifierProvider.autoDispose((ref) => PicturesViewModel());

class PicturesViewModel extends ChangeNotifier {

}