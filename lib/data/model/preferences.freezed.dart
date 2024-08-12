// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'preferences.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Preferences _$PreferencesFromJson(Map<String, dynamic> json) {
  return _Preferences.fromJson(json);
}

/// @nodoc
mixin _$Preferences {
  Language? get nativeLanguage => throw _privateConstructorUsedError;
  Language? get learningLanguage => throw _privateConstructorUsedError;
  ProficiencyLevel? get proficiencyLevel => throw _privateConstructorUsedError;
  LearningReason? get learningReason => throw _privateConstructorUsedError;

  /// Serializes this Preferences to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Preferences
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PreferencesCopyWith<Preferences> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PreferencesCopyWith<$Res> {
  factory $PreferencesCopyWith(
          Preferences value, $Res Function(Preferences) then) =
      _$PreferencesCopyWithImpl<$Res, Preferences>;
  @useResult
  $Res call(
      {Language? nativeLanguage,
      Language? learningLanguage,
      ProficiencyLevel? proficiencyLevel,
      LearningReason? learningReason});
}

/// @nodoc
class _$PreferencesCopyWithImpl<$Res, $Val extends Preferences>
    implements $PreferencesCopyWith<$Res> {
  _$PreferencesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Preferences
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nativeLanguage = freezed,
    Object? learningLanguage = freezed,
    Object? proficiencyLevel = freezed,
    Object? learningReason = freezed,
  }) {
    return _then(_value.copyWith(
      nativeLanguage: freezed == nativeLanguage
          ? _value.nativeLanguage
          : nativeLanguage // ignore: cast_nullable_to_non_nullable
              as Language?,
      learningLanguage: freezed == learningLanguage
          ? _value.learningLanguage
          : learningLanguage // ignore: cast_nullable_to_non_nullable
              as Language?,
      proficiencyLevel: freezed == proficiencyLevel
          ? _value.proficiencyLevel
          : proficiencyLevel // ignore: cast_nullable_to_non_nullable
              as ProficiencyLevel?,
      learningReason: freezed == learningReason
          ? _value.learningReason
          : learningReason // ignore: cast_nullable_to_non_nullable
              as LearningReason?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PreferencesImplCopyWith<$Res>
    implements $PreferencesCopyWith<$Res> {
  factory _$$PreferencesImplCopyWith(
          _$PreferencesImpl value, $Res Function(_$PreferencesImpl) then) =
      __$$PreferencesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Language? nativeLanguage,
      Language? learningLanguage,
      ProficiencyLevel? proficiencyLevel,
      LearningReason? learningReason});
}

/// @nodoc
class __$$PreferencesImplCopyWithImpl<$Res>
    extends _$PreferencesCopyWithImpl<$Res, _$PreferencesImpl>
    implements _$$PreferencesImplCopyWith<$Res> {
  __$$PreferencesImplCopyWithImpl(
      _$PreferencesImpl _value, $Res Function(_$PreferencesImpl) _then)
      : super(_value, _then);

  /// Create a copy of Preferences
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nativeLanguage = freezed,
    Object? learningLanguage = freezed,
    Object? proficiencyLevel = freezed,
    Object? learningReason = freezed,
  }) {
    return _then(_$PreferencesImpl(
      nativeLanguage: freezed == nativeLanguage
          ? _value.nativeLanguage
          : nativeLanguage // ignore: cast_nullable_to_non_nullable
              as Language?,
      learningLanguage: freezed == learningLanguage
          ? _value.learningLanguage
          : learningLanguage // ignore: cast_nullable_to_non_nullable
              as Language?,
      proficiencyLevel: freezed == proficiencyLevel
          ? _value.proficiencyLevel
          : proficiencyLevel // ignore: cast_nullable_to_non_nullable
              as ProficiencyLevel?,
      learningReason: freezed == learningReason
          ? _value.learningReason
          : learningReason // ignore: cast_nullable_to_non_nullable
              as LearningReason?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PreferencesImpl implements _Preferences {
  _$PreferencesImpl(
      {this.nativeLanguage,
      this.learningLanguage,
      this.proficiencyLevel,
      this.learningReason});

  factory _$PreferencesImpl.fromJson(Map<String, dynamic> json) =>
      _$$PreferencesImplFromJson(json);

  @override
  final Language? nativeLanguage;
  @override
  final Language? learningLanguage;
  @override
  final ProficiencyLevel? proficiencyLevel;
  @override
  final LearningReason? learningReason;

  @override
  String toString() {
    return 'Preferences(nativeLanguage: $nativeLanguage, learningLanguage: $learningLanguage, proficiencyLevel: $proficiencyLevel, learningReason: $learningReason)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PreferencesImpl &&
            (identical(other.nativeLanguage, nativeLanguage) ||
                other.nativeLanguage == nativeLanguage) &&
            (identical(other.learningLanguage, learningLanguage) ||
                other.learningLanguage == learningLanguage) &&
            (identical(other.proficiencyLevel, proficiencyLevel) ||
                other.proficiencyLevel == proficiencyLevel) &&
            (identical(other.learningReason, learningReason) ||
                other.learningReason == learningReason));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, nativeLanguage, learningLanguage,
      proficiencyLevel, learningReason);

  /// Create a copy of Preferences
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PreferencesImplCopyWith<_$PreferencesImpl> get copyWith =>
      __$$PreferencesImplCopyWithImpl<_$PreferencesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PreferencesImplToJson(
      this,
    );
  }
}

abstract class _Preferences implements Preferences {
  factory _Preferences(
      {final Language? nativeLanguage,
      final Language? learningLanguage,
      final ProficiencyLevel? proficiencyLevel,
      final LearningReason? learningReason}) = _$PreferencesImpl;

  factory _Preferences.fromJson(Map<String, dynamic> json) =
      _$PreferencesImpl.fromJson;

  @override
  Language? get nativeLanguage;
  @override
  Language? get learningLanguage;
  @override
  ProficiencyLevel? get proficiencyLevel;
  @override
  LearningReason? get learningReason;

  /// Create a copy of Preferences
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PreferencesImplCopyWith<_$PreferencesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
