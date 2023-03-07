import 'package:animal_shogi/pages/setting/setting_view_model.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../foundation/enum.dart';

class SettingPage extends HookConsumerWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final letterType =
        ref.watch(settingProvider.select((value) => value.letterType));
    return Scaffold(
      appBar: AppBar(
        title: Text(
          letterType == LetterType.kanji ? '設定' : 'せってい',
          style: const TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return ListView(
      children: [_buildSwitchLetterButton()],
    );
  }

  Widget _buildSwitchLetterButton() {
    return HookConsumer(builder: (context, ref, child) {
      final letterType =
          ref.watch(settingProvider.select((value) => value.letterType));
      return Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: [
              Radio(
                  value: LetterType.hiragana,
                  groupValue: letterType,
                  onChanged: (value) {
                    ref.read(settingProvider).letterType = value!;
                  }),
              const Text('ひらがな')
            ],
          ),
          Row(
            children: [
              Radio(
                  value: LetterType.kanji,
                  groupValue: letterType,
                  onChanged: (value) {
                    ref.read(settingProvider).letterType = value!;
                  }),
              const Text('漢字')
            ],
          ),
        ],
      );
    });
  }
}
