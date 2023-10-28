import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:lc_sample_project/models/values/hobby.dart';
import 'package:lc_sample_project/models/values/input_model.dart';
import 'package:lc_sample_project/models/values/profession.dart';
import 'package:lc_sample_project/models/values/sex.dart';

/// 入力フォームの状態を通知するコントローラー.
///
/// プロジェクトによってViewModelだったりStateだったりControllerだったりNotifierだったりPrefixが違うのでプロジェクトの方針に則ること。
class InputFormPageNotifier extends StateNotifier<InputModel> {
  InputFormPageNotifier({required InputModel state}) : super(state);

  // setter.
  // 実際setterを使うよりはsetするためのメソッドを用意したほうが使いやすい。
  // プロジェクトの方針によってsetterは扱わない方針を取っているところもある。
  set familyName(String value) => state = state.copyWith(familyName: value);

  set firstName(String value) => state = state.copyWith(firstName: value);

  set sex(Sex? value) => state = state.copyWith(sex: value);

  set telephoneNumber(String value) {
    if (value.isNotEmpty) {
      // assertionとか入れておくと良い場合がある
      assert(int.tryParse(value) != null,
          'Contains characters other than numbers');
    }
    state = state.copyWith(telephoneNumber: value);
  }

  set hobbies(List<Hobby>? value) {
    if (value == null) {
      return;
    }
    state = state.copyWith(hobbies: value);
  }

  set profession(Profession? value) =>
      state = state.copyWith(profession: value);

  set consent(bool? value) {
    if (value == null) {
      return;
    }
    state = state.copyWith(consent: value);
  }
}
