// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'input_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$InputModel {
  /// 姓.
  String get familyName => throw _privateConstructorUsedError;

  /// 名.
  String get firstName => throw _privateConstructorUsedError;

  /// 性別.
  Sex? get sex => throw _privateConstructorUsedError;

  /// 電話番号
  String get telephoneNumber => throw _privateConstructorUsedError;

  /// 趣味
  List<Hobby> get hobbies => throw _privateConstructorUsedError;

  /// 職業.
  Profession? get profession => throw _privateConstructorUsedError;

  /// 同意.
  ///
  /// 本来ならなんの同意なのかまでわかるフィールド名の方が良い。
  bool get consent => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InputModelCopyWith<InputModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InputModelCopyWith<$Res> {
  factory $InputModelCopyWith(
          InputModel value, $Res Function(InputModel) then) =
      _$InputModelCopyWithImpl<$Res, InputModel>;
  @useResult
  $Res call(
      {String familyName,
      String firstName,
      Sex? sex,
      String telephoneNumber,
      List<Hobby> hobbies,
      Profession? profession,
      bool consent});
}

/// @nodoc
class _$InputModelCopyWithImpl<$Res, $Val extends InputModel>
    implements $InputModelCopyWith<$Res> {
  _$InputModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? familyName = null,
    Object? firstName = null,
    Object? sex = freezed,
    Object? telephoneNumber = null,
    Object? hobbies = null,
    Object? profession = freezed,
    Object? consent = null,
  }) {
    return _then(_value.copyWith(
      familyName: null == familyName
          ? _value.familyName
          : familyName // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      sex: freezed == sex
          ? _value.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as Sex?,
      telephoneNumber: null == telephoneNumber
          ? _value.telephoneNumber
          : telephoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      hobbies: null == hobbies
          ? _value.hobbies
          : hobbies // ignore: cast_nullable_to_non_nullable
              as List<Hobby>,
      profession: freezed == profession
          ? _value.profession
          : profession // ignore: cast_nullable_to_non_nullable
              as Profession?,
      consent: null == consent
          ? _value.consent
          : consent // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InputModelCopyWith<$Res>
    implements $InputModelCopyWith<$Res> {
  factory _$$_InputModelCopyWith(
          _$_InputModel value, $Res Function(_$_InputModel) then) =
      __$$_InputModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String familyName,
      String firstName,
      Sex? sex,
      String telephoneNumber,
      List<Hobby> hobbies,
      Profession? profession,
      bool consent});
}

/// @nodoc
class __$$_InputModelCopyWithImpl<$Res>
    extends _$InputModelCopyWithImpl<$Res, _$_InputModel>
    implements _$$_InputModelCopyWith<$Res> {
  __$$_InputModelCopyWithImpl(
      _$_InputModel _value, $Res Function(_$_InputModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? familyName = null,
    Object? firstName = null,
    Object? sex = freezed,
    Object? telephoneNumber = null,
    Object? hobbies = null,
    Object? profession = freezed,
    Object? consent = null,
  }) {
    return _then(_$_InputModel(
      familyName: null == familyName
          ? _value.familyName
          : familyName // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      sex: freezed == sex
          ? _value.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as Sex?,
      telephoneNumber: null == telephoneNumber
          ? _value.telephoneNumber
          : telephoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      hobbies: null == hobbies
          ? _value._hobbies
          : hobbies // ignore: cast_nullable_to_non_nullable
              as List<Hobby>,
      profession: freezed == profession
          ? _value.profession
          : profession // ignore: cast_nullable_to_non_nullable
              as Profession?,
      consent: null == consent
          ? _value.consent
          : consent // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_InputModel extends _InputModel {
  const _$_InputModel(
      {this.familyName = '',
      this.firstName = '',
      this.sex,
      this.telephoneNumber = '',
      final List<Hobby> hobbies = const [],
      this.profession,
      this.consent = false})
      : _hobbies = hobbies,
        super._();

  /// 姓.
  @override
  @JsonKey()
  final String familyName;

  /// 名.
  @override
  @JsonKey()
  final String firstName;

  /// 性別.
  @override
  final Sex? sex;

  /// 電話番号
  @override
  @JsonKey()
  final String telephoneNumber;

  /// 趣味
  final List<Hobby> _hobbies;

  /// 趣味
  @override
  @JsonKey()
  List<Hobby> get hobbies {
    if (_hobbies is EqualUnmodifiableListView) return _hobbies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_hobbies);
  }

  /// 職業.
  @override
  final Profession? profession;

  /// 同意.
  ///
  /// 本来ならなんの同意なのかまでわかるフィールド名の方が良い。
  @override
  @JsonKey()
  final bool consent;

  @override
  String toString() {
    return 'InputModel(familyName: $familyName, firstName: $firstName, sex: $sex, telephoneNumber: $telephoneNumber, hobbies: $hobbies, profession: $profession, consent: $consent)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InputModel &&
            (identical(other.familyName, familyName) ||
                other.familyName == familyName) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.sex, sex) || other.sex == sex) &&
            (identical(other.telephoneNumber, telephoneNumber) ||
                other.telephoneNumber == telephoneNumber) &&
            const DeepCollectionEquality().equals(other._hobbies, _hobbies) &&
            (identical(other.profession, profession) ||
                other.profession == profession) &&
            (identical(other.consent, consent) || other.consent == consent));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      familyName,
      firstName,
      sex,
      telephoneNumber,
      const DeepCollectionEquality().hash(_hobbies),
      profession,
      consent);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InputModelCopyWith<_$_InputModel> get copyWith =>
      __$$_InputModelCopyWithImpl<_$_InputModel>(this, _$identity);
}

abstract class _InputModel extends InputModel {
  const factory _InputModel(
      {final String familyName,
      final String firstName,
      final Sex? sex,
      final String telephoneNumber,
      final List<Hobby> hobbies,
      final Profession? profession,
      final bool consent}) = _$_InputModel;
  const _InputModel._() : super._();

  @override

  /// 姓.
  String get familyName;
  @override

  /// 名.
  String get firstName;
  @override

  /// 性別.
  Sex? get sex;
  @override

  /// 電話番号
  String get telephoneNumber;
  @override

  /// 趣味
  List<Hobby> get hobbies;
  @override

  /// 職業.
  Profession? get profession;
  @override

  /// 同意.
  ///
  /// 本来ならなんの同意なのかまでわかるフィールド名の方が良い。
  bool get consent;
  @override
  @JsonKey(ignore: true)
  _$$_InputModelCopyWith<_$_InputModel> get copyWith =>
      throw _privateConstructorUsedError;
}
