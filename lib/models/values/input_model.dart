import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lc_sample_project/models/values/hobby.dart';
import 'package:lc_sample_project/models/values/profession.dart';
import 'package:lc_sample_project/models/values/sex.dart';

part 'input_model.freezed.dart';

/// 入力値オブジェクト.
@freezed
class InputModel with _$InputModel {
  const InputModel._();

  const factory InputModel({
    /// 姓.
    @Default('') String familyName,

    /// 名.
    @Default('') String firstName,

    /// 性別.
    Sex? sex,

    /// 電話番号
    @Default('')  String telephoneNumber,

    /// 趣味
    @Default([]) List<Hobby> hobbies,

    /// 職業.
    Profession? profession,

    /// 同意.
    ///
    /// 本来ならなんの同意なのかまでわかるフィールド名の方が良い。
    @Default(false) bool consent,
  }) = _InputModel;

  /// 名前が入力されているか否か.
  bool get isNameEntered => familyName.isNotEmpty && firstName.isNotEmpty;
}
