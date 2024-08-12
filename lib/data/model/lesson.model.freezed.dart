// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lesson.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Lesson _$LessonFromJson(Map<String, dynamic> json) {
  return _Lesson.fromJson(json);
}

/// @nodoc
mixin _$Lesson {
  TranslatedText get title => throw _privateConstructorUsedError;
  List<TranslatedText> get vocabulary => throw _privateConstructorUsedError;
  List<TranslatedText> get description => throw _privateConstructorUsedError;
  List<ConversationStarter> get conversationStarters =>
      throw _privateConstructorUsedError;
  List<Insight> get grammarInsights => throw _privateConstructorUsedError;
  List<Insight> get cultureInsights => throw _privateConstructorUsedError;

  /// Serializes this Lesson to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Lesson
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LessonCopyWith<Lesson> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LessonCopyWith<$Res> {
  factory $LessonCopyWith(Lesson value, $Res Function(Lesson) then) =
      _$LessonCopyWithImpl<$Res, Lesson>;
  @useResult
  $Res call(
      {TranslatedText title,
      List<TranslatedText> vocabulary,
      List<TranslatedText> description,
      List<ConversationStarter> conversationStarters,
      List<Insight> grammarInsights,
      List<Insight> cultureInsights});

  $TranslatedTextCopyWith<$Res> get title;
}

/// @nodoc
class _$LessonCopyWithImpl<$Res, $Val extends Lesson>
    implements $LessonCopyWith<$Res> {
  _$LessonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Lesson
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? vocabulary = null,
    Object? description = null,
    Object? conversationStarters = null,
    Object? grammarInsights = null,
    Object? cultureInsights = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as TranslatedText,
      vocabulary: null == vocabulary
          ? _value.vocabulary
          : vocabulary // ignore: cast_nullable_to_non_nullable
              as List<TranslatedText>,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as List<TranslatedText>,
      conversationStarters: null == conversationStarters
          ? _value.conversationStarters
          : conversationStarters // ignore: cast_nullable_to_non_nullable
              as List<ConversationStarter>,
      grammarInsights: null == grammarInsights
          ? _value.grammarInsights
          : grammarInsights // ignore: cast_nullable_to_non_nullable
              as List<Insight>,
      cultureInsights: null == cultureInsights
          ? _value.cultureInsights
          : cultureInsights // ignore: cast_nullable_to_non_nullable
              as List<Insight>,
    ) as $Val);
  }

  /// Create a copy of Lesson
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TranslatedTextCopyWith<$Res> get title {
    return $TranslatedTextCopyWith<$Res>(_value.title, (value) {
      return _then(_value.copyWith(title: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LessonImplCopyWith<$Res> implements $LessonCopyWith<$Res> {
  factory _$$LessonImplCopyWith(
          _$LessonImpl value, $Res Function(_$LessonImpl) then) =
      __$$LessonImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TranslatedText title,
      List<TranslatedText> vocabulary,
      List<TranslatedText> description,
      List<ConversationStarter> conversationStarters,
      List<Insight> grammarInsights,
      List<Insight> cultureInsights});

  @override
  $TranslatedTextCopyWith<$Res> get title;
}

/// @nodoc
class __$$LessonImplCopyWithImpl<$Res>
    extends _$LessonCopyWithImpl<$Res, _$LessonImpl>
    implements _$$LessonImplCopyWith<$Res> {
  __$$LessonImplCopyWithImpl(
      _$LessonImpl _value, $Res Function(_$LessonImpl) _then)
      : super(_value, _then);

  /// Create a copy of Lesson
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? vocabulary = null,
    Object? description = null,
    Object? conversationStarters = null,
    Object? grammarInsights = null,
    Object? cultureInsights = null,
  }) {
    return _then(_$LessonImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as TranslatedText,
      vocabulary: null == vocabulary
          ? _value._vocabulary
          : vocabulary // ignore: cast_nullable_to_non_nullable
              as List<TranslatedText>,
      description: null == description
          ? _value._description
          : description // ignore: cast_nullable_to_non_nullable
              as List<TranslatedText>,
      conversationStarters: null == conversationStarters
          ? _value._conversationStarters
          : conversationStarters // ignore: cast_nullable_to_non_nullable
              as List<ConversationStarter>,
      grammarInsights: null == grammarInsights
          ? _value._grammarInsights
          : grammarInsights // ignore: cast_nullable_to_non_nullable
              as List<Insight>,
      cultureInsights: null == cultureInsights
          ? _value._cultureInsights
          : cultureInsights // ignore: cast_nullable_to_non_nullable
              as List<Insight>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LessonImpl implements _Lesson {
  const _$LessonImpl(
      {required this.title,
      required final List<TranslatedText> vocabulary,
      required final List<TranslatedText> description,
      required final List<ConversationStarter> conversationStarters,
      required final List<Insight> grammarInsights,
      required final List<Insight> cultureInsights})
      : _vocabulary = vocabulary,
        _description = description,
        _conversationStarters = conversationStarters,
        _grammarInsights = grammarInsights,
        _cultureInsights = cultureInsights;

  factory _$LessonImpl.fromJson(Map<String, dynamic> json) =>
      _$$LessonImplFromJson(json);

  @override
  final TranslatedText title;
  final List<TranslatedText> _vocabulary;
  @override
  List<TranslatedText> get vocabulary {
    if (_vocabulary is EqualUnmodifiableListView) return _vocabulary;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_vocabulary);
  }

  final List<TranslatedText> _description;
  @override
  List<TranslatedText> get description {
    if (_description is EqualUnmodifiableListView) return _description;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_description);
  }

  final List<ConversationStarter> _conversationStarters;
  @override
  List<ConversationStarter> get conversationStarters {
    if (_conversationStarters is EqualUnmodifiableListView)
      return _conversationStarters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_conversationStarters);
  }

  final List<Insight> _grammarInsights;
  @override
  List<Insight> get grammarInsights {
    if (_grammarInsights is EqualUnmodifiableListView) return _grammarInsights;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_grammarInsights);
  }

  final List<Insight> _cultureInsights;
  @override
  List<Insight> get cultureInsights {
    if (_cultureInsights is EqualUnmodifiableListView) return _cultureInsights;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cultureInsights);
  }

  @override
  String toString() {
    return 'Lesson(title: $title, vocabulary: $vocabulary, description: $description, conversationStarters: $conversationStarters, grammarInsights: $grammarInsights, cultureInsights: $cultureInsights)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LessonImpl &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality()
                .equals(other._vocabulary, _vocabulary) &&
            const DeepCollectionEquality()
                .equals(other._description, _description) &&
            const DeepCollectionEquality()
                .equals(other._conversationStarters, _conversationStarters) &&
            const DeepCollectionEquality()
                .equals(other._grammarInsights, _grammarInsights) &&
            const DeepCollectionEquality()
                .equals(other._cultureInsights, _cultureInsights));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      const DeepCollectionEquality().hash(_vocabulary),
      const DeepCollectionEquality().hash(_description),
      const DeepCollectionEquality().hash(_conversationStarters),
      const DeepCollectionEquality().hash(_grammarInsights),
      const DeepCollectionEquality().hash(_cultureInsights));

  /// Create a copy of Lesson
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LessonImplCopyWith<_$LessonImpl> get copyWith =>
      __$$LessonImplCopyWithImpl<_$LessonImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LessonImplToJson(
      this,
    );
  }
}

abstract class _Lesson implements Lesson {
  const factory _Lesson(
      {required final TranslatedText title,
      required final List<TranslatedText> vocabulary,
      required final List<TranslatedText> description,
      required final List<ConversationStarter> conversationStarters,
      required final List<Insight> grammarInsights,
      required final List<Insight> cultureInsights}) = _$LessonImpl;

  factory _Lesson.fromJson(Map<String, dynamic> json) = _$LessonImpl.fromJson;

  @override
  TranslatedText get title;
  @override
  List<TranslatedText> get vocabulary;
  @override
  List<TranslatedText> get description;
  @override
  List<ConversationStarter> get conversationStarters;
  @override
  List<Insight> get grammarInsights;
  @override
  List<Insight> get cultureInsights;

  /// Create a copy of Lesson
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LessonImplCopyWith<_$LessonImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LanguagePair _$LanguagePairFromJson(Map<String, dynamic> json) {
  return _LanguagePair.fromJson(json);
}

/// @nodoc
mixin _$LanguagePair {
  Language get baseLanguage => throw _privateConstructorUsedError;
  Language get targetLanguage => throw _privateConstructorUsedError;
  ProficiencyLevel get proficiencyLevel => throw _privateConstructorUsedError;

  /// Serializes this LanguagePair to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LanguagePair
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LanguagePairCopyWith<LanguagePair> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LanguagePairCopyWith<$Res> {
  factory $LanguagePairCopyWith(
          LanguagePair value, $Res Function(LanguagePair) then) =
      _$LanguagePairCopyWithImpl<$Res, LanguagePair>;
  @useResult
  $Res call(
      {Language baseLanguage,
      Language targetLanguage,
      ProficiencyLevel proficiencyLevel});
}

/// @nodoc
class _$LanguagePairCopyWithImpl<$Res, $Val extends LanguagePair>
    implements $LanguagePairCopyWith<$Res> {
  _$LanguagePairCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LanguagePair
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? baseLanguage = null,
    Object? targetLanguage = null,
    Object? proficiencyLevel = null,
  }) {
    return _then(_value.copyWith(
      baseLanguage: null == baseLanguage
          ? _value.baseLanguage
          : baseLanguage // ignore: cast_nullable_to_non_nullable
              as Language,
      targetLanguage: null == targetLanguage
          ? _value.targetLanguage
          : targetLanguage // ignore: cast_nullable_to_non_nullable
              as Language,
      proficiencyLevel: null == proficiencyLevel
          ? _value.proficiencyLevel
          : proficiencyLevel // ignore: cast_nullable_to_non_nullable
              as ProficiencyLevel,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LanguagePairImplCopyWith<$Res>
    implements $LanguagePairCopyWith<$Res> {
  factory _$$LanguagePairImplCopyWith(
          _$LanguagePairImpl value, $Res Function(_$LanguagePairImpl) then) =
      __$$LanguagePairImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Language baseLanguage,
      Language targetLanguage,
      ProficiencyLevel proficiencyLevel});
}

/// @nodoc
class __$$LanguagePairImplCopyWithImpl<$Res>
    extends _$LanguagePairCopyWithImpl<$Res, _$LanguagePairImpl>
    implements _$$LanguagePairImplCopyWith<$Res> {
  __$$LanguagePairImplCopyWithImpl(
      _$LanguagePairImpl _value, $Res Function(_$LanguagePairImpl) _then)
      : super(_value, _then);

  /// Create a copy of LanguagePair
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? baseLanguage = null,
    Object? targetLanguage = null,
    Object? proficiencyLevel = null,
  }) {
    return _then(_$LanguagePairImpl(
      baseLanguage: null == baseLanguage
          ? _value.baseLanguage
          : baseLanguage // ignore: cast_nullable_to_non_nullable
              as Language,
      targetLanguage: null == targetLanguage
          ? _value.targetLanguage
          : targetLanguage // ignore: cast_nullable_to_non_nullable
              as Language,
      proficiencyLevel: null == proficiencyLevel
          ? _value.proficiencyLevel
          : proficiencyLevel // ignore: cast_nullable_to_non_nullable
              as ProficiencyLevel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LanguagePairImpl implements _LanguagePair {
  const _$LanguagePairImpl(
      {required this.baseLanguage,
      required this.targetLanguage,
      required this.proficiencyLevel});

  factory _$LanguagePairImpl.fromJson(Map<String, dynamic> json) =>
      _$$LanguagePairImplFromJson(json);

  @override
  final Language baseLanguage;
  @override
  final Language targetLanguage;
  @override
  final ProficiencyLevel proficiencyLevel;

  @override
  String toString() {
    return 'LanguagePair(baseLanguage: $baseLanguage, targetLanguage: $targetLanguage, proficiencyLevel: $proficiencyLevel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LanguagePairImpl &&
            (identical(other.baseLanguage, baseLanguage) ||
                other.baseLanguage == baseLanguage) &&
            (identical(other.targetLanguage, targetLanguage) ||
                other.targetLanguage == targetLanguage) &&
            (identical(other.proficiencyLevel, proficiencyLevel) ||
                other.proficiencyLevel == proficiencyLevel));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, baseLanguage, targetLanguage, proficiencyLevel);

  /// Create a copy of LanguagePair
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LanguagePairImplCopyWith<_$LanguagePairImpl> get copyWith =>
      __$$LanguagePairImplCopyWithImpl<_$LanguagePairImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LanguagePairImplToJson(
      this,
    );
  }
}

abstract class _LanguagePair implements LanguagePair {
  const factory _LanguagePair(
      {required final Language baseLanguage,
      required final Language targetLanguage,
      required final ProficiencyLevel proficiencyLevel}) = _$LanguagePairImpl;

  factory _LanguagePair.fromJson(Map<String, dynamic> json) =
      _$LanguagePairImpl.fromJson;

  @override
  Language get baseLanguage;
  @override
  Language get targetLanguage;
  @override
  ProficiencyLevel get proficiencyLevel;

  /// Create a copy of LanguagePair
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LanguagePairImplCopyWith<_$LanguagePairImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ImageUrl _$ImageUrlFromJson(Map<String, dynamic> json) {
  return _ImageUrl.fromJson(json);
}

/// @nodoc
mixin _$ImageUrl {
  String get small => throw _privateConstructorUsedError;
  String get medium => throw _privateConstructorUsedError;
  String get large => throw _privateConstructorUsedError;

  /// Serializes this ImageUrl to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ImageUrl
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ImageUrlCopyWith<ImageUrl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageUrlCopyWith<$Res> {
  factory $ImageUrlCopyWith(ImageUrl value, $Res Function(ImageUrl) then) =
      _$ImageUrlCopyWithImpl<$Res, ImageUrl>;
  @useResult
  $Res call({String small, String medium, String large});
}

/// @nodoc
class _$ImageUrlCopyWithImpl<$Res, $Val extends ImageUrl>
    implements $ImageUrlCopyWith<$Res> {
  _$ImageUrlCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ImageUrl
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? small = null,
    Object? medium = null,
    Object? large = null,
  }) {
    return _then(_value.copyWith(
      small: null == small
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as String,
      medium: null == medium
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as String,
      large: null == large
          ? _value.large
          : large // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImageUrlImplCopyWith<$Res>
    implements $ImageUrlCopyWith<$Res> {
  factory _$$ImageUrlImplCopyWith(
          _$ImageUrlImpl value, $Res Function(_$ImageUrlImpl) then) =
      __$$ImageUrlImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String small, String medium, String large});
}

/// @nodoc
class __$$ImageUrlImplCopyWithImpl<$Res>
    extends _$ImageUrlCopyWithImpl<$Res, _$ImageUrlImpl>
    implements _$$ImageUrlImplCopyWith<$Res> {
  __$$ImageUrlImplCopyWithImpl(
      _$ImageUrlImpl _value, $Res Function(_$ImageUrlImpl) _then)
      : super(_value, _then);

  /// Create a copy of ImageUrl
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? small = null,
    Object? medium = null,
    Object? large = null,
  }) {
    return _then(_$ImageUrlImpl(
      small: null == small
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as String,
      medium: null == medium
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as String,
      large: null == large
          ? _value.large
          : large // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImageUrlImpl implements _ImageUrl {
  const _$ImageUrlImpl(
      {required this.small, required this.medium, required this.large});

  factory _$ImageUrlImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageUrlImplFromJson(json);

  @override
  final String small;
  @override
  final String medium;
  @override
  final String large;

  @override
  String toString() {
    return 'ImageUrl(small: $small, medium: $medium, large: $large)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageUrlImpl &&
            (identical(other.small, small) || other.small == small) &&
            (identical(other.medium, medium) || other.medium == medium) &&
            (identical(other.large, large) || other.large == large));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, small, medium, large);

  /// Create a copy of ImageUrl
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageUrlImplCopyWith<_$ImageUrlImpl> get copyWith =>
      __$$ImageUrlImplCopyWithImpl<_$ImageUrlImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageUrlImplToJson(
      this,
    );
  }
}

abstract class _ImageUrl implements ImageUrl {
  const factory _ImageUrl(
      {required final String small,
      required final String medium,
      required final String large}) = _$ImageUrlImpl;

  factory _ImageUrl.fromJson(Map<String, dynamic> json) =
      _$ImageUrlImpl.fromJson;

  @override
  String get small;
  @override
  String get medium;
  @override
  String get large;

  /// Create a copy of ImageUrl
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImageUrlImplCopyWith<_$ImageUrlImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TranslatedText _$TranslatedTextFromJson(Map<String, dynamic> json) {
  return _TranslatedText.fromJson(json);
}

/// @nodoc
mixin _$TranslatedText {
  String get baseText => throw _privateConstructorUsedError;
  String get targetText => throw _privateConstructorUsedError;

  /// Serializes this TranslatedText to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TranslatedText
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TranslatedTextCopyWith<TranslatedText> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TranslatedTextCopyWith<$Res> {
  factory $TranslatedTextCopyWith(
          TranslatedText value, $Res Function(TranslatedText) then) =
      _$TranslatedTextCopyWithImpl<$Res, TranslatedText>;
  @useResult
  $Res call({String baseText, String targetText});
}

/// @nodoc
class _$TranslatedTextCopyWithImpl<$Res, $Val extends TranslatedText>
    implements $TranslatedTextCopyWith<$Res> {
  _$TranslatedTextCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TranslatedText
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? baseText = null,
    Object? targetText = null,
  }) {
    return _then(_value.copyWith(
      baseText: null == baseText
          ? _value.baseText
          : baseText // ignore: cast_nullable_to_non_nullable
              as String,
      targetText: null == targetText
          ? _value.targetText
          : targetText // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TranslatedTextImplCopyWith<$Res>
    implements $TranslatedTextCopyWith<$Res> {
  factory _$$TranslatedTextImplCopyWith(_$TranslatedTextImpl value,
          $Res Function(_$TranslatedTextImpl) then) =
      __$$TranslatedTextImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String baseText, String targetText});
}

/// @nodoc
class __$$TranslatedTextImplCopyWithImpl<$Res>
    extends _$TranslatedTextCopyWithImpl<$Res, _$TranslatedTextImpl>
    implements _$$TranslatedTextImplCopyWith<$Res> {
  __$$TranslatedTextImplCopyWithImpl(
      _$TranslatedTextImpl _value, $Res Function(_$TranslatedTextImpl) _then)
      : super(_value, _then);

  /// Create a copy of TranslatedText
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? baseText = null,
    Object? targetText = null,
  }) {
    return _then(_$TranslatedTextImpl(
      baseText: null == baseText
          ? _value.baseText
          : baseText // ignore: cast_nullable_to_non_nullable
              as String,
      targetText: null == targetText
          ? _value.targetText
          : targetText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TranslatedTextImpl implements _TranslatedText {
  const _$TranslatedTextImpl(
      {required this.baseText, required this.targetText});

  factory _$TranslatedTextImpl.fromJson(Map<String, dynamic> json) =>
      _$$TranslatedTextImplFromJson(json);

  @override
  final String baseText;
  @override
  final String targetText;

  @override
  String toString() {
    return 'TranslatedText(baseText: $baseText, targetText: $targetText)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TranslatedTextImpl &&
            (identical(other.baseText, baseText) ||
                other.baseText == baseText) &&
            (identical(other.targetText, targetText) ||
                other.targetText == targetText));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, baseText, targetText);

  /// Create a copy of TranslatedText
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TranslatedTextImplCopyWith<_$TranslatedTextImpl> get copyWith =>
      __$$TranslatedTextImplCopyWithImpl<_$TranslatedTextImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TranslatedTextImplToJson(
      this,
    );
  }
}

abstract class _TranslatedText implements TranslatedText {
  const factory _TranslatedText(
      {required final String baseText,
      required final String targetText}) = _$TranslatedTextImpl;

  factory _TranslatedText.fromJson(Map<String, dynamic> json) =
      _$TranslatedTextImpl.fromJson;

  @override
  String get baseText;
  @override
  String get targetText;

  /// Create a copy of TranslatedText
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TranslatedTextImplCopyWith<_$TranslatedTextImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Message _$MessageFromJson(Map<String, dynamic> json) {
  return _Message.fromJson(json);
}

/// @nodoc
mixin _$Message {
  String get speaker => throw _privateConstructorUsedError;
  TranslatedText get message => throw _privateConstructorUsedError;

  /// Serializes this Message to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Message
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MessageCopyWith<Message> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageCopyWith<$Res> {
  factory $MessageCopyWith(Message value, $Res Function(Message) then) =
      _$MessageCopyWithImpl<$Res, Message>;
  @useResult
  $Res call({String speaker, TranslatedText message});

  $TranslatedTextCopyWith<$Res> get message;
}

/// @nodoc
class _$MessageCopyWithImpl<$Res, $Val extends Message>
    implements $MessageCopyWith<$Res> {
  _$MessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Message
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? speaker = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      speaker: null == speaker
          ? _value.speaker
          : speaker // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as TranslatedText,
    ) as $Val);
  }

  /// Create a copy of Message
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TranslatedTextCopyWith<$Res> get message {
    return $TranslatedTextCopyWith<$Res>(_value.message, (value) {
      return _then(_value.copyWith(message: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MessageImplCopyWith<$Res> implements $MessageCopyWith<$Res> {
  factory _$$MessageImplCopyWith(
          _$MessageImpl value, $Res Function(_$MessageImpl) then) =
      __$$MessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String speaker, TranslatedText message});

  @override
  $TranslatedTextCopyWith<$Res> get message;
}

/// @nodoc
class __$$MessageImplCopyWithImpl<$Res>
    extends _$MessageCopyWithImpl<$Res, _$MessageImpl>
    implements _$$MessageImplCopyWith<$Res> {
  __$$MessageImplCopyWithImpl(
      _$MessageImpl _value, $Res Function(_$MessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of Message
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? speaker = null,
    Object? message = null,
  }) {
    return _then(_$MessageImpl(
      speaker: null == speaker
          ? _value.speaker
          : speaker // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as TranslatedText,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MessageImpl implements _Message {
  const _$MessageImpl({required this.speaker, required this.message});

  factory _$MessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageImplFromJson(json);

  @override
  final String speaker;
  @override
  final TranslatedText message;

  @override
  String toString() {
    return 'Message(speaker: $speaker, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageImpl &&
            (identical(other.speaker, speaker) || other.speaker == speaker) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, speaker, message);

  /// Create a copy of Message
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageImplCopyWith<_$MessageImpl> get copyWith =>
      __$$MessageImplCopyWithImpl<_$MessageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageImplToJson(
      this,
    );
  }
}

abstract class _Message implements Message {
  const factory _Message(
      {required final String speaker,
      required final TranslatedText message}) = _$MessageImpl;

  factory _Message.fromJson(Map<String, dynamic> json) = _$MessageImpl.fromJson;

  @override
  String get speaker;
  @override
  TranslatedText get message;

  /// Create a copy of Message
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MessageImplCopyWith<_$MessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ConversationStarter _$ConversationStarterFromJson(Map<String, dynamic> json) {
  return _ConversationStarter.fromJson(json);
}

/// @nodoc
mixin _$ConversationStarter {
  TranslatedText get topic => throw _privateConstructorUsedError;
  List<Message> get messages => throw _privateConstructorUsedError;

  /// Serializes this ConversationStarter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConversationStarter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConversationStarterCopyWith<ConversationStarter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConversationStarterCopyWith<$Res> {
  factory $ConversationStarterCopyWith(
          ConversationStarter value, $Res Function(ConversationStarter) then) =
      _$ConversationStarterCopyWithImpl<$Res, ConversationStarter>;
  @useResult
  $Res call({TranslatedText topic, List<Message> messages});

  $TranslatedTextCopyWith<$Res> get topic;
}

/// @nodoc
class _$ConversationStarterCopyWithImpl<$Res, $Val extends ConversationStarter>
    implements $ConversationStarterCopyWith<$Res> {
  _$ConversationStarterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConversationStarter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topic = null,
    Object? messages = null,
  }) {
    return _then(_value.copyWith(
      topic: null == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as TranslatedText,
      messages: null == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Message>,
    ) as $Val);
  }

  /// Create a copy of ConversationStarter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TranslatedTextCopyWith<$Res> get topic {
    return $TranslatedTextCopyWith<$Res>(_value.topic, (value) {
      return _then(_value.copyWith(topic: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ConversationStarterImplCopyWith<$Res>
    implements $ConversationStarterCopyWith<$Res> {
  factory _$$ConversationStarterImplCopyWith(_$ConversationStarterImpl value,
          $Res Function(_$ConversationStarterImpl) then) =
      __$$ConversationStarterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TranslatedText topic, List<Message> messages});

  @override
  $TranslatedTextCopyWith<$Res> get topic;
}

/// @nodoc
class __$$ConversationStarterImplCopyWithImpl<$Res>
    extends _$ConversationStarterCopyWithImpl<$Res, _$ConversationStarterImpl>
    implements _$$ConversationStarterImplCopyWith<$Res> {
  __$$ConversationStarterImplCopyWithImpl(_$ConversationStarterImpl _value,
      $Res Function(_$ConversationStarterImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConversationStarter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topic = null,
    Object? messages = null,
  }) {
    return _then(_$ConversationStarterImpl(
      topic: null == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as TranslatedText,
      messages: null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Message>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConversationStarterImpl implements _ConversationStarter {
  const _$ConversationStarterImpl(
      {required this.topic, required final List<Message> messages})
      : _messages = messages;

  factory _$ConversationStarterImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConversationStarterImplFromJson(json);

  @override
  final TranslatedText topic;
  final List<Message> _messages;
  @override
  List<Message> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  String toString() {
    return 'ConversationStarter(topic: $topic, messages: $messages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConversationStarterImpl &&
            (identical(other.topic, topic) || other.topic == topic) &&
            const DeepCollectionEquality().equals(other._messages, _messages));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, topic, const DeepCollectionEquality().hash(_messages));

  /// Create a copy of ConversationStarter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConversationStarterImplCopyWith<_$ConversationStarterImpl> get copyWith =>
      __$$ConversationStarterImplCopyWithImpl<_$ConversationStarterImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConversationStarterImplToJson(
      this,
    );
  }
}

abstract class _ConversationStarter implements ConversationStarter {
  const factory _ConversationStarter(
      {required final TranslatedText topic,
      required final List<Message> messages}) = _$ConversationStarterImpl;

  factory _ConversationStarter.fromJson(Map<String, dynamic> json) =
      _$ConversationStarterImpl.fromJson;

  @override
  TranslatedText get topic;
  @override
  List<Message> get messages;

  /// Create a copy of ConversationStarter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConversationStarterImplCopyWith<_$ConversationStarterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Insight _$InsightFromJson(Map<String, dynamic> json) {
  return _Insight.fromJson(json);
}

/// @nodoc
mixin _$Insight {
  InsightType get type => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get explanation => throw _privateConstructorUsedError;

  /// Serializes this Insight to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Insight
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InsightCopyWith<Insight> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InsightCopyWith<$Res> {
  factory $InsightCopyWith(Insight value, $Res Function(Insight) then) =
      _$InsightCopyWithImpl<$Res, Insight>;
  @useResult
  $Res call({InsightType type, String title, String explanation});
}

/// @nodoc
class _$InsightCopyWithImpl<$Res, $Val extends Insight>
    implements $InsightCopyWith<$Res> {
  _$InsightCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Insight
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? title = null,
    Object? explanation = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as InsightType,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      explanation: null == explanation
          ? _value.explanation
          : explanation // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InsightImplCopyWith<$Res> implements $InsightCopyWith<$Res> {
  factory _$$InsightImplCopyWith(
          _$InsightImpl value, $Res Function(_$InsightImpl) then) =
      __$$InsightImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({InsightType type, String title, String explanation});
}

/// @nodoc
class __$$InsightImplCopyWithImpl<$Res>
    extends _$InsightCopyWithImpl<$Res, _$InsightImpl>
    implements _$$InsightImplCopyWith<$Res> {
  __$$InsightImplCopyWithImpl(
      _$InsightImpl _value, $Res Function(_$InsightImpl) _then)
      : super(_value, _then);

  /// Create a copy of Insight
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? title = null,
    Object? explanation = null,
  }) {
    return _then(_$InsightImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as InsightType,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      explanation: null == explanation
          ? _value.explanation
          : explanation // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InsightImpl implements _Insight {
  const _$InsightImpl(
      {required this.type, required this.title, required this.explanation});

  factory _$InsightImpl.fromJson(Map<String, dynamic> json) =>
      _$$InsightImplFromJson(json);

  @override
  final InsightType type;
  @override
  final String title;
  @override
  final String explanation;

  @override
  String toString() {
    return 'Insight(type: $type, title: $title, explanation: $explanation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InsightImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.explanation, explanation) ||
                other.explanation == explanation));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, title, explanation);

  /// Create a copy of Insight
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InsightImplCopyWith<_$InsightImpl> get copyWith =>
      __$$InsightImplCopyWithImpl<_$InsightImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InsightImplToJson(
      this,
    );
  }
}

abstract class _Insight implements Insight {
  const factory _Insight(
      {required final InsightType type,
      required final String title,
      required final String explanation}) = _$InsightImpl;

  factory _Insight.fromJson(Map<String, dynamic> json) = _$InsightImpl.fromJson;

  @override
  InsightType get type;
  @override
  String get title;
  @override
  String get explanation;

  /// Create a copy of Insight
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InsightImplCopyWith<_$InsightImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LessonReview _$LessonReviewFromJson(Map<String, dynamic> json) {
  return _LessonReview.fromJson(json);
}

/// @nodoc
mixin _$LessonReview {
  String? get id => throw _privateConstructorUsedError;
  bool get isFavorite => throw _privateConstructorUsedError;
  Lesson get lesson => throw _privateConstructorUsedError;
  ImageUrl get imageUrl => throw _privateConstructorUsedError;
  LanguagePair get languagePair => throw _privateConstructorUsedError;
  DateTime get nextReviewDate => throw _privateConstructorUsedError;
  int get repetitionCount => throw _privateConstructorUsedError;
  double get easeFactor => throw _privateConstructorUsedError;
  bool get isMastered => throw _privateConstructorUsedError;
  DateTime? get lastReviewedAt => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this LessonReview to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LessonReview
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LessonReviewCopyWith<LessonReview> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LessonReviewCopyWith<$Res> {
  factory $LessonReviewCopyWith(
          LessonReview value, $Res Function(LessonReview) then) =
      _$LessonReviewCopyWithImpl<$Res, LessonReview>;
  @useResult
  $Res call(
      {String? id,
      bool isFavorite,
      Lesson lesson,
      ImageUrl imageUrl,
      LanguagePair languagePair,
      DateTime nextReviewDate,
      int repetitionCount,
      double easeFactor,
      bool isMastered,
      DateTime? lastReviewedAt,
      DateTime createdAt});

  $LessonCopyWith<$Res> get lesson;
  $ImageUrlCopyWith<$Res> get imageUrl;
  $LanguagePairCopyWith<$Res> get languagePair;
}

/// @nodoc
class _$LessonReviewCopyWithImpl<$Res, $Val extends LessonReview>
    implements $LessonReviewCopyWith<$Res> {
  _$LessonReviewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LessonReview
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? isFavorite = null,
    Object? lesson = null,
    Object? imageUrl = null,
    Object? languagePair = null,
    Object? nextReviewDate = null,
    Object? repetitionCount = null,
    Object? easeFactor = null,
    Object? isMastered = null,
    Object? lastReviewedAt = freezed,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
      lesson: null == lesson
          ? _value.lesson
          : lesson // ignore: cast_nullable_to_non_nullable
              as Lesson,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as ImageUrl,
      languagePair: null == languagePair
          ? _value.languagePair
          : languagePair // ignore: cast_nullable_to_non_nullable
              as LanguagePair,
      nextReviewDate: null == nextReviewDate
          ? _value.nextReviewDate
          : nextReviewDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      repetitionCount: null == repetitionCount
          ? _value.repetitionCount
          : repetitionCount // ignore: cast_nullable_to_non_nullable
              as int,
      easeFactor: null == easeFactor
          ? _value.easeFactor
          : easeFactor // ignore: cast_nullable_to_non_nullable
              as double,
      isMastered: null == isMastered
          ? _value.isMastered
          : isMastered // ignore: cast_nullable_to_non_nullable
              as bool,
      lastReviewedAt: freezed == lastReviewedAt
          ? _value.lastReviewedAt
          : lastReviewedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }

  /// Create a copy of LessonReview
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LessonCopyWith<$Res> get lesson {
    return $LessonCopyWith<$Res>(_value.lesson, (value) {
      return _then(_value.copyWith(lesson: value) as $Val);
    });
  }

  /// Create a copy of LessonReview
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ImageUrlCopyWith<$Res> get imageUrl {
    return $ImageUrlCopyWith<$Res>(_value.imageUrl, (value) {
      return _then(_value.copyWith(imageUrl: value) as $Val);
    });
  }

  /// Create a copy of LessonReview
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LanguagePairCopyWith<$Res> get languagePair {
    return $LanguagePairCopyWith<$Res>(_value.languagePair, (value) {
      return _then(_value.copyWith(languagePair: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LessonReviewImplCopyWith<$Res>
    implements $LessonReviewCopyWith<$Res> {
  factory _$$LessonReviewImplCopyWith(
          _$LessonReviewImpl value, $Res Function(_$LessonReviewImpl) then) =
      __$$LessonReviewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      bool isFavorite,
      Lesson lesson,
      ImageUrl imageUrl,
      LanguagePair languagePair,
      DateTime nextReviewDate,
      int repetitionCount,
      double easeFactor,
      bool isMastered,
      DateTime? lastReviewedAt,
      DateTime createdAt});

  @override
  $LessonCopyWith<$Res> get lesson;
  @override
  $ImageUrlCopyWith<$Res> get imageUrl;
  @override
  $LanguagePairCopyWith<$Res> get languagePair;
}

/// @nodoc
class __$$LessonReviewImplCopyWithImpl<$Res>
    extends _$LessonReviewCopyWithImpl<$Res, _$LessonReviewImpl>
    implements _$$LessonReviewImplCopyWith<$Res> {
  __$$LessonReviewImplCopyWithImpl(
      _$LessonReviewImpl _value, $Res Function(_$LessonReviewImpl) _then)
      : super(_value, _then);

  /// Create a copy of LessonReview
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? isFavorite = null,
    Object? lesson = null,
    Object? imageUrl = null,
    Object? languagePair = null,
    Object? nextReviewDate = null,
    Object? repetitionCount = null,
    Object? easeFactor = null,
    Object? isMastered = null,
    Object? lastReviewedAt = freezed,
    Object? createdAt = null,
  }) {
    return _then(_$LessonReviewImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
      lesson: null == lesson
          ? _value.lesson
          : lesson // ignore: cast_nullable_to_non_nullable
              as Lesson,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as ImageUrl,
      languagePair: null == languagePair
          ? _value.languagePair
          : languagePair // ignore: cast_nullable_to_non_nullable
              as LanguagePair,
      nextReviewDate: null == nextReviewDate
          ? _value.nextReviewDate
          : nextReviewDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      repetitionCount: null == repetitionCount
          ? _value.repetitionCount
          : repetitionCount // ignore: cast_nullable_to_non_nullable
              as int,
      easeFactor: null == easeFactor
          ? _value.easeFactor
          : easeFactor // ignore: cast_nullable_to_non_nullable
              as double,
      isMastered: null == isMastered
          ? _value.isMastered
          : isMastered // ignore: cast_nullable_to_non_nullable
              as bool,
      lastReviewedAt: freezed == lastReviewedAt
          ? _value.lastReviewedAt
          : lastReviewedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LessonReviewImpl implements _LessonReview {
  const _$LessonReviewImpl(
      {this.id,
      this.isFavorite = false,
      required this.lesson,
      required this.imageUrl,
      required this.languagePair,
      required this.nextReviewDate,
      required this.repetitionCount,
      required this.easeFactor,
      this.isMastered = false,
      this.lastReviewedAt,
      required this.createdAt});

  factory _$LessonReviewImpl.fromJson(Map<String, dynamic> json) =>
      _$$LessonReviewImplFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey()
  final bool isFavorite;
  @override
  final Lesson lesson;
  @override
  final ImageUrl imageUrl;
  @override
  final LanguagePair languagePair;
  @override
  final DateTime nextReviewDate;
  @override
  final int repetitionCount;
  @override
  final double easeFactor;
  @override
  @JsonKey()
  final bool isMastered;
  @override
  final DateTime? lastReviewedAt;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'LessonReview(id: $id, isFavorite: $isFavorite, lesson: $lesson, imageUrl: $imageUrl, languagePair: $languagePair, nextReviewDate: $nextReviewDate, repetitionCount: $repetitionCount, easeFactor: $easeFactor, isMastered: $isMastered, lastReviewedAt: $lastReviewedAt, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LessonReviewImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite) &&
            (identical(other.lesson, lesson) || other.lesson == lesson) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.languagePair, languagePair) ||
                other.languagePair == languagePair) &&
            (identical(other.nextReviewDate, nextReviewDate) ||
                other.nextReviewDate == nextReviewDate) &&
            (identical(other.repetitionCount, repetitionCount) ||
                other.repetitionCount == repetitionCount) &&
            (identical(other.easeFactor, easeFactor) ||
                other.easeFactor == easeFactor) &&
            (identical(other.isMastered, isMastered) ||
                other.isMastered == isMastered) &&
            (identical(other.lastReviewedAt, lastReviewedAt) ||
                other.lastReviewedAt == lastReviewedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      isFavorite,
      lesson,
      imageUrl,
      languagePair,
      nextReviewDate,
      repetitionCount,
      easeFactor,
      isMastered,
      lastReviewedAt,
      createdAt);

  /// Create a copy of LessonReview
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LessonReviewImplCopyWith<_$LessonReviewImpl> get copyWith =>
      __$$LessonReviewImplCopyWithImpl<_$LessonReviewImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LessonReviewImplToJson(
      this,
    );
  }
}

abstract class _LessonReview implements LessonReview {
  const factory _LessonReview(
      {final String? id,
      final bool isFavorite,
      required final Lesson lesson,
      required final ImageUrl imageUrl,
      required final LanguagePair languagePair,
      required final DateTime nextReviewDate,
      required final int repetitionCount,
      required final double easeFactor,
      final bool isMastered,
      final DateTime? lastReviewedAt,
      required final DateTime createdAt}) = _$LessonReviewImpl;

  factory _LessonReview.fromJson(Map<String, dynamic> json) =
      _$LessonReviewImpl.fromJson;

  @override
  String? get id;
  @override
  bool get isFavorite;
  @override
  Lesson get lesson;
  @override
  ImageUrl get imageUrl;
  @override
  LanguagePair get languagePair;
  @override
  DateTime get nextReviewDate;
  @override
  int get repetitionCount;
  @override
  double get easeFactor;
  @override
  bool get isMastered;
  @override
  DateTime? get lastReviewedAt;
  @override
  DateTime get createdAt;

  /// Create a copy of LessonReview
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LessonReviewImplCopyWith<_$LessonReviewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

VocabularyReview _$VocabularyReviewFromJson(Map<String, dynamic> json) {
  return _VocabularyReview.fromJson(json);
}

/// @nodoc
mixin _$VocabularyReview {
  String? get id => throw _privateConstructorUsedError;
  String get lessonReviewId => throw _privateConstructorUsedError;
  TranslatedText get word => throw _privateConstructorUsedError;
  LanguagePair get languagePair => throw _privateConstructorUsedError;
  DateTime get nextReviewDate => throw _privateConstructorUsedError;
  int get repetitionCount => throw _privateConstructorUsedError;
  double get easeFactor => throw _privateConstructorUsedError;
  bool get isMastered => throw _privateConstructorUsedError;
  DateTime? get lastReviewedAt => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this VocabularyReview to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VocabularyReview
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VocabularyReviewCopyWith<VocabularyReview> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VocabularyReviewCopyWith<$Res> {
  factory $VocabularyReviewCopyWith(
          VocabularyReview value, $Res Function(VocabularyReview) then) =
      _$VocabularyReviewCopyWithImpl<$Res, VocabularyReview>;
  @useResult
  $Res call(
      {String? id,
      String lessonReviewId,
      TranslatedText word,
      LanguagePair languagePair,
      DateTime nextReviewDate,
      int repetitionCount,
      double easeFactor,
      bool isMastered,
      DateTime? lastReviewedAt,
      DateTime createdAt});

  $TranslatedTextCopyWith<$Res> get word;
  $LanguagePairCopyWith<$Res> get languagePair;
}

/// @nodoc
class _$VocabularyReviewCopyWithImpl<$Res, $Val extends VocabularyReview>
    implements $VocabularyReviewCopyWith<$Res> {
  _$VocabularyReviewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VocabularyReview
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? lessonReviewId = null,
    Object? word = null,
    Object? languagePair = null,
    Object? nextReviewDate = null,
    Object? repetitionCount = null,
    Object? easeFactor = null,
    Object? isMastered = null,
    Object? lastReviewedAt = freezed,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      lessonReviewId: null == lessonReviewId
          ? _value.lessonReviewId
          : lessonReviewId // ignore: cast_nullable_to_non_nullable
              as String,
      word: null == word
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as TranslatedText,
      languagePair: null == languagePair
          ? _value.languagePair
          : languagePair // ignore: cast_nullable_to_non_nullable
              as LanguagePair,
      nextReviewDate: null == nextReviewDate
          ? _value.nextReviewDate
          : nextReviewDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      repetitionCount: null == repetitionCount
          ? _value.repetitionCount
          : repetitionCount // ignore: cast_nullable_to_non_nullable
              as int,
      easeFactor: null == easeFactor
          ? _value.easeFactor
          : easeFactor // ignore: cast_nullable_to_non_nullable
              as double,
      isMastered: null == isMastered
          ? _value.isMastered
          : isMastered // ignore: cast_nullable_to_non_nullable
              as bool,
      lastReviewedAt: freezed == lastReviewedAt
          ? _value.lastReviewedAt
          : lastReviewedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }

  /// Create a copy of VocabularyReview
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TranslatedTextCopyWith<$Res> get word {
    return $TranslatedTextCopyWith<$Res>(_value.word, (value) {
      return _then(_value.copyWith(word: value) as $Val);
    });
  }

  /// Create a copy of VocabularyReview
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LanguagePairCopyWith<$Res> get languagePair {
    return $LanguagePairCopyWith<$Res>(_value.languagePair, (value) {
      return _then(_value.copyWith(languagePair: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VocabularyReviewImplCopyWith<$Res>
    implements $VocabularyReviewCopyWith<$Res> {
  factory _$$VocabularyReviewImplCopyWith(_$VocabularyReviewImpl value,
          $Res Function(_$VocabularyReviewImpl) then) =
      __$$VocabularyReviewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String lessonReviewId,
      TranslatedText word,
      LanguagePair languagePair,
      DateTime nextReviewDate,
      int repetitionCount,
      double easeFactor,
      bool isMastered,
      DateTime? lastReviewedAt,
      DateTime createdAt});

  @override
  $TranslatedTextCopyWith<$Res> get word;
  @override
  $LanguagePairCopyWith<$Res> get languagePair;
}

/// @nodoc
class __$$VocabularyReviewImplCopyWithImpl<$Res>
    extends _$VocabularyReviewCopyWithImpl<$Res, _$VocabularyReviewImpl>
    implements _$$VocabularyReviewImplCopyWith<$Res> {
  __$$VocabularyReviewImplCopyWithImpl(_$VocabularyReviewImpl _value,
      $Res Function(_$VocabularyReviewImpl) _then)
      : super(_value, _then);

  /// Create a copy of VocabularyReview
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? lessonReviewId = null,
    Object? word = null,
    Object? languagePair = null,
    Object? nextReviewDate = null,
    Object? repetitionCount = null,
    Object? easeFactor = null,
    Object? isMastered = null,
    Object? lastReviewedAt = freezed,
    Object? createdAt = null,
  }) {
    return _then(_$VocabularyReviewImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      lessonReviewId: null == lessonReviewId
          ? _value.lessonReviewId
          : lessonReviewId // ignore: cast_nullable_to_non_nullable
              as String,
      word: null == word
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as TranslatedText,
      languagePair: null == languagePair
          ? _value.languagePair
          : languagePair // ignore: cast_nullable_to_non_nullable
              as LanguagePair,
      nextReviewDate: null == nextReviewDate
          ? _value.nextReviewDate
          : nextReviewDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      repetitionCount: null == repetitionCount
          ? _value.repetitionCount
          : repetitionCount // ignore: cast_nullable_to_non_nullable
              as int,
      easeFactor: null == easeFactor
          ? _value.easeFactor
          : easeFactor // ignore: cast_nullable_to_non_nullable
              as double,
      isMastered: null == isMastered
          ? _value.isMastered
          : isMastered // ignore: cast_nullable_to_non_nullable
              as bool,
      lastReviewedAt: freezed == lastReviewedAt
          ? _value.lastReviewedAt
          : lastReviewedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VocabularyReviewImpl implements _VocabularyReview {
  const _$VocabularyReviewImpl(
      {this.id,
      required this.lessonReviewId,
      required this.word,
      required this.languagePair,
      required this.nextReviewDate,
      required this.repetitionCount,
      required this.easeFactor,
      this.isMastered = false,
      this.lastReviewedAt,
      required this.createdAt});

  factory _$VocabularyReviewImpl.fromJson(Map<String, dynamic> json) =>
      _$$VocabularyReviewImplFromJson(json);

  @override
  final String? id;
  @override
  final String lessonReviewId;
  @override
  final TranslatedText word;
  @override
  final LanguagePair languagePair;
  @override
  final DateTime nextReviewDate;
  @override
  final int repetitionCount;
  @override
  final double easeFactor;
  @override
  @JsonKey()
  final bool isMastered;
  @override
  final DateTime? lastReviewedAt;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'VocabularyReview(id: $id, lessonReviewId: $lessonReviewId, word: $word, languagePair: $languagePair, nextReviewDate: $nextReviewDate, repetitionCount: $repetitionCount, easeFactor: $easeFactor, isMastered: $isMastered, lastReviewedAt: $lastReviewedAt, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VocabularyReviewImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.lessonReviewId, lessonReviewId) ||
                other.lessonReviewId == lessonReviewId) &&
            (identical(other.word, word) || other.word == word) &&
            (identical(other.languagePair, languagePair) ||
                other.languagePair == languagePair) &&
            (identical(other.nextReviewDate, nextReviewDate) ||
                other.nextReviewDate == nextReviewDate) &&
            (identical(other.repetitionCount, repetitionCount) ||
                other.repetitionCount == repetitionCount) &&
            (identical(other.easeFactor, easeFactor) ||
                other.easeFactor == easeFactor) &&
            (identical(other.isMastered, isMastered) ||
                other.isMastered == isMastered) &&
            (identical(other.lastReviewedAt, lastReviewedAt) ||
                other.lastReviewedAt == lastReviewedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      lessonReviewId,
      word,
      languagePair,
      nextReviewDate,
      repetitionCount,
      easeFactor,
      isMastered,
      lastReviewedAt,
      createdAt);

  /// Create a copy of VocabularyReview
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VocabularyReviewImplCopyWith<_$VocabularyReviewImpl> get copyWith =>
      __$$VocabularyReviewImplCopyWithImpl<_$VocabularyReviewImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VocabularyReviewImplToJson(
      this,
    );
  }
}

abstract class _VocabularyReview implements VocabularyReview {
  const factory _VocabularyReview(
      {final String? id,
      required final String lessonReviewId,
      required final TranslatedText word,
      required final LanguagePair languagePair,
      required final DateTime nextReviewDate,
      required final int repetitionCount,
      required final double easeFactor,
      final bool isMastered,
      final DateTime? lastReviewedAt,
      required final DateTime createdAt}) = _$VocabularyReviewImpl;

  factory _VocabularyReview.fromJson(Map<String, dynamic> json) =
      _$VocabularyReviewImpl.fromJson;

  @override
  String? get id;
  @override
  String get lessonReviewId;
  @override
  TranslatedText get word;
  @override
  LanguagePair get languagePair;
  @override
  DateTime get nextReviewDate;
  @override
  int get repetitionCount;
  @override
  double get easeFactor;
  @override
  bool get isMastered;
  @override
  DateTime? get lastReviewedAt;
  @override
  DateTime get createdAt;

  /// Create a copy of VocabularyReview
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VocabularyReviewImplCopyWith<_$VocabularyReviewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DescriptionReview _$DescriptionReviewFromJson(Map<String, dynamic> json) {
  return _DescriptionReview.fromJson(json);
}

/// @nodoc
mixin _$DescriptionReview {
  String? get id => throw _privateConstructorUsedError;
  String get lessonReviewId => throw _privateConstructorUsedError;
  TranslatedText get description => throw _privateConstructorUsedError;
  LanguagePair get languagePair => throw _privateConstructorUsedError;
  DateTime get nextReviewDate => throw _privateConstructorUsedError;
  int get repetitionCount => throw _privateConstructorUsedError;
  double get easeFactor => throw _privateConstructorUsedError;
  bool get isMastered => throw _privateConstructorUsedError;
  DateTime? get lastReviewedAt => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this DescriptionReview to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DescriptionReview
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DescriptionReviewCopyWith<DescriptionReview> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DescriptionReviewCopyWith<$Res> {
  factory $DescriptionReviewCopyWith(
          DescriptionReview value, $Res Function(DescriptionReview) then) =
      _$DescriptionReviewCopyWithImpl<$Res, DescriptionReview>;
  @useResult
  $Res call(
      {String? id,
      String lessonReviewId,
      TranslatedText description,
      LanguagePair languagePair,
      DateTime nextReviewDate,
      int repetitionCount,
      double easeFactor,
      bool isMastered,
      DateTime? lastReviewedAt,
      DateTime createdAt});

  $TranslatedTextCopyWith<$Res> get description;
  $LanguagePairCopyWith<$Res> get languagePair;
}

/// @nodoc
class _$DescriptionReviewCopyWithImpl<$Res, $Val extends DescriptionReview>
    implements $DescriptionReviewCopyWith<$Res> {
  _$DescriptionReviewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DescriptionReview
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? lessonReviewId = null,
    Object? description = null,
    Object? languagePair = null,
    Object? nextReviewDate = null,
    Object? repetitionCount = null,
    Object? easeFactor = null,
    Object? isMastered = null,
    Object? lastReviewedAt = freezed,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      lessonReviewId: null == lessonReviewId
          ? _value.lessonReviewId
          : lessonReviewId // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as TranslatedText,
      languagePair: null == languagePair
          ? _value.languagePair
          : languagePair // ignore: cast_nullable_to_non_nullable
              as LanguagePair,
      nextReviewDate: null == nextReviewDate
          ? _value.nextReviewDate
          : nextReviewDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      repetitionCount: null == repetitionCount
          ? _value.repetitionCount
          : repetitionCount // ignore: cast_nullable_to_non_nullable
              as int,
      easeFactor: null == easeFactor
          ? _value.easeFactor
          : easeFactor // ignore: cast_nullable_to_non_nullable
              as double,
      isMastered: null == isMastered
          ? _value.isMastered
          : isMastered // ignore: cast_nullable_to_non_nullable
              as bool,
      lastReviewedAt: freezed == lastReviewedAt
          ? _value.lastReviewedAt
          : lastReviewedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }

  /// Create a copy of DescriptionReview
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TranslatedTextCopyWith<$Res> get description {
    return $TranslatedTextCopyWith<$Res>(_value.description, (value) {
      return _then(_value.copyWith(description: value) as $Val);
    });
  }

  /// Create a copy of DescriptionReview
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LanguagePairCopyWith<$Res> get languagePair {
    return $LanguagePairCopyWith<$Res>(_value.languagePair, (value) {
      return _then(_value.copyWith(languagePair: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DescriptionReviewImplCopyWith<$Res>
    implements $DescriptionReviewCopyWith<$Res> {
  factory _$$DescriptionReviewImplCopyWith(_$DescriptionReviewImpl value,
          $Res Function(_$DescriptionReviewImpl) then) =
      __$$DescriptionReviewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String lessonReviewId,
      TranslatedText description,
      LanguagePair languagePair,
      DateTime nextReviewDate,
      int repetitionCount,
      double easeFactor,
      bool isMastered,
      DateTime? lastReviewedAt,
      DateTime createdAt});

  @override
  $TranslatedTextCopyWith<$Res> get description;
  @override
  $LanguagePairCopyWith<$Res> get languagePair;
}

/// @nodoc
class __$$DescriptionReviewImplCopyWithImpl<$Res>
    extends _$DescriptionReviewCopyWithImpl<$Res, _$DescriptionReviewImpl>
    implements _$$DescriptionReviewImplCopyWith<$Res> {
  __$$DescriptionReviewImplCopyWithImpl(_$DescriptionReviewImpl _value,
      $Res Function(_$DescriptionReviewImpl) _then)
      : super(_value, _then);

  /// Create a copy of DescriptionReview
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? lessonReviewId = null,
    Object? description = null,
    Object? languagePair = null,
    Object? nextReviewDate = null,
    Object? repetitionCount = null,
    Object? easeFactor = null,
    Object? isMastered = null,
    Object? lastReviewedAt = freezed,
    Object? createdAt = null,
  }) {
    return _then(_$DescriptionReviewImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      lessonReviewId: null == lessonReviewId
          ? _value.lessonReviewId
          : lessonReviewId // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as TranslatedText,
      languagePair: null == languagePair
          ? _value.languagePair
          : languagePair // ignore: cast_nullable_to_non_nullable
              as LanguagePair,
      nextReviewDate: null == nextReviewDate
          ? _value.nextReviewDate
          : nextReviewDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      repetitionCount: null == repetitionCount
          ? _value.repetitionCount
          : repetitionCount // ignore: cast_nullable_to_non_nullable
              as int,
      easeFactor: null == easeFactor
          ? _value.easeFactor
          : easeFactor // ignore: cast_nullable_to_non_nullable
              as double,
      isMastered: null == isMastered
          ? _value.isMastered
          : isMastered // ignore: cast_nullable_to_non_nullable
              as bool,
      lastReviewedAt: freezed == lastReviewedAt
          ? _value.lastReviewedAt
          : lastReviewedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DescriptionReviewImpl implements _DescriptionReview {
  const _$DescriptionReviewImpl(
      {this.id,
      required this.lessonReviewId,
      required this.description,
      required this.languagePair,
      required this.nextReviewDate,
      required this.repetitionCount,
      required this.easeFactor,
      this.isMastered = false,
      this.lastReviewedAt,
      required this.createdAt});

  factory _$DescriptionReviewImpl.fromJson(Map<String, dynamic> json) =>
      _$$DescriptionReviewImplFromJson(json);

  @override
  final String? id;
  @override
  final String lessonReviewId;
  @override
  final TranslatedText description;
  @override
  final LanguagePair languagePair;
  @override
  final DateTime nextReviewDate;
  @override
  final int repetitionCount;
  @override
  final double easeFactor;
  @override
  @JsonKey()
  final bool isMastered;
  @override
  final DateTime? lastReviewedAt;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'DescriptionReview(id: $id, lessonReviewId: $lessonReviewId, description: $description, languagePair: $languagePair, nextReviewDate: $nextReviewDate, repetitionCount: $repetitionCount, easeFactor: $easeFactor, isMastered: $isMastered, lastReviewedAt: $lastReviewedAt, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DescriptionReviewImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.lessonReviewId, lessonReviewId) ||
                other.lessonReviewId == lessonReviewId) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.languagePair, languagePair) ||
                other.languagePair == languagePair) &&
            (identical(other.nextReviewDate, nextReviewDate) ||
                other.nextReviewDate == nextReviewDate) &&
            (identical(other.repetitionCount, repetitionCount) ||
                other.repetitionCount == repetitionCount) &&
            (identical(other.easeFactor, easeFactor) ||
                other.easeFactor == easeFactor) &&
            (identical(other.isMastered, isMastered) ||
                other.isMastered == isMastered) &&
            (identical(other.lastReviewedAt, lastReviewedAt) ||
                other.lastReviewedAt == lastReviewedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      lessonReviewId,
      description,
      languagePair,
      nextReviewDate,
      repetitionCount,
      easeFactor,
      isMastered,
      lastReviewedAt,
      createdAt);

  /// Create a copy of DescriptionReview
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DescriptionReviewImplCopyWith<_$DescriptionReviewImpl> get copyWith =>
      __$$DescriptionReviewImplCopyWithImpl<_$DescriptionReviewImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DescriptionReviewImplToJson(
      this,
    );
  }
}

abstract class _DescriptionReview implements DescriptionReview {
  const factory _DescriptionReview(
      {final String? id,
      required final String lessonReviewId,
      required final TranslatedText description,
      required final LanguagePair languagePair,
      required final DateTime nextReviewDate,
      required final int repetitionCount,
      required final double easeFactor,
      final bool isMastered,
      final DateTime? lastReviewedAt,
      required final DateTime createdAt}) = _$DescriptionReviewImpl;

  factory _DescriptionReview.fromJson(Map<String, dynamic> json) =
      _$DescriptionReviewImpl.fromJson;

  @override
  String? get id;
  @override
  String get lessonReviewId;
  @override
  TranslatedText get description;
  @override
  LanguagePair get languagePair;
  @override
  DateTime get nextReviewDate;
  @override
  int get repetitionCount;
  @override
  double get easeFactor;
  @override
  bool get isMastered;
  @override
  DateTime? get lastReviewedAt;
  @override
  DateTime get createdAt;

  /// Create a copy of DescriptionReview
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DescriptionReviewImplCopyWith<_$DescriptionReviewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ConversationStarterReview _$ConversationStarterReviewFromJson(
    Map<String, dynamic> json) {
  return _ConversationStarterReview.fromJson(json);
}

/// @nodoc
mixin _$ConversationStarterReview {
  String? get id => throw _privateConstructorUsedError;
  String? get lessonReviewId => throw _privateConstructorUsedError;
  ConversationStarter get conversationStarter =>
      throw _privateConstructorUsedError;
  LanguagePair get languagePair => throw _privateConstructorUsedError;
  DateTime get nextReviewDate => throw _privateConstructorUsedError;
  int get repetitionCount => throw _privateConstructorUsedError;
  double get easeFactor => throw _privateConstructorUsedError;
  bool get isMastered => throw _privateConstructorUsedError;
  DateTime? get lastReviewedAt => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this ConversationStarterReview to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConversationStarterReview
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConversationStarterReviewCopyWith<ConversationStarterReview> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConversationStarterReviewCopyWith<$Res> {
  factory $ConversationStarterReviewCopyWith(ConversationStarterReview value,
          $Res Function(ConversationStarterReview) then) =
      _$ConversationStarterReviewCopyWithImpl<$Res, ConversationStarterReview>;
  @useResult
  $Res call(
      {String? id,
      String? lessonReviewId,
      ConversationStarter conversationStarter,
      LanguagePair languagePair,
      DateTime nextReviewDate,
      int repetitionCount,
      double easeFactor,
      bool isMastered,
      DateTime? lastReviewedAt,
      DateTime createdAt});

  $ConversationStarterCopyWith<$Res> get conversationStarter;
  $LanguagePairCopyWith<$Res> get languagePair;
}

/// @nodoc
class _$ConversationStarterReviewCopyWithImpl<$Res,
        $Val extends ConversationStarterReview>
    implements $ConversationStarterReviewCopyWith<$Res> {
  _$ConversationStarterReviewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConversationStarterReview
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? lessonReviewId = freezed,
    Object? conversationStarter = null,
    Object? languagePair = null,
    Object? nextReviewDate = null,
    Object? repetitionCount = null,
    Object? easeFactor = null,
    Object? isMastered = null,
    Object? lastReviewedAt = freezed,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      lessonReviewId: freezed == lessonReviewId
          ? _value.lessonReviewId
          : lessonReviewId // ignore: cast_nullable_to_non_nullable
              as String?,
      conversationStarter: null == conversationStarter
          ? _value.conversationStarter
          : conversationStarter // ignore: cast_nullable_to_non_nullable
              as ConversationStarter,
      languagePair: null == languagePair
          ? _value.languagePair
          : languagePair // ignore: cast_nullable_to_non_nullable
              as LanguagePair,
      nextReviewDate: null == nextReviewDate
          ? _value.nextReviewDate
          : nextReviewDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      repetitionCount: null == repetitionCount
          ? _value.repetitionCount
          : repetitionCount // ignore: cast_nullable_to_non_nullable
              as int,
      easeFactor: null == easeFactor
          ? _value.easeFactor
          : easeFactor // ignore: cast_nullable_to_non_nullable
              as double,
      isMastered: null == isMastered
          ? _value.isMastered
          : isMastered // ignore: cast_nullable_to_non_nullable
              as bool,
      lastReviewedAt: freezed == lastReviewedAt
          ? _value.lastReviewedAt
          : lastReviewedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }

  /// Create a copy of ConversationStarterReview
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ConversationStarterCopyWith<$Res> get conversationStarter {
    return $ConversationStarterCopyWith<$Res>(_value.conversationStarter,
        (value) {
      return _then(_value.copyWith(conversationStarter: value) as $Val);
    });
  }

  /// Create a copy of ConversationStarterReview
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LanguagePairCopyWith<$Res> get languagePair {
    return $LanguagePairCopyWith<$Res>(_value.languagePair, (value) {
      return _then(_value.copyWith(languagePair: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ConversationStarterReviewImplCopyWith<$Res>
    implements $ConversationStarterReviewCopyWith<$Res> {
  factory _$$ConversationStarterReviewImplCopyWith(
          _$ConversationStarterReviewImpl value,
          $Res Function(_$ConversationStarterReviewImpl) then) =
      __$$ConversationStarterReviewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? lessonReviewId,
      ConversationStarter conversationStarter,
      LanguagePair languagePair,
      DateTime nextReviewDate,
      int repetitionCount,
      double easeFactor,
      bool isMastered,
      DateTime? lastReviewedAt,
      DateTime createdAt});

  @override
  $ConversationStarterCopyWith<$Res> get conversationStarter;
  @override
  $LanguagePairCopyWith<$Res> get languagePair;
}

/// @nodoc
class __$$ConversationStarterReviewImplCopyWithImpl<$Res>
    extends _$ConversationStarterReviewCopyWithImpl<$Res,
        _$ConversationStarterReviewImpl>
    implements _$$ConversationStarterReviewImplCopyWith<$Res> {
  __$$ConversationStarterReviewImplCopyWithImpl(
      _$ConversationStarterReviewImpl _value,
      $Res Function(_$ConversationStarterReviewImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConversationStarterReview
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? lessonReviewId = freezed,
    Object? conversationStarter = null,
    Object? languagePair = null,
    Object? nextReviewDate = null,
    Object? repetitionCount = null,
    Object? easeFactor = null,
    Object? isMastered = null,
    Object? lastReviewedAt = freezed,
    Object? createdAt = null,
  }) {
    return _then(_$ConversationStarterReviewImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      lessonReviewId: freezed == lessonReviewId
          ? _value.lessonReviewId
          : lessonReviewId // ignore: cast_nullable_to_non_nullable
              as String?,
      conversationStarter: null == conversationStarter
          ? _value.conversationStarter
          : conversationStarter // ignore: cast_nullable_to_non_nullable
              as ConversationStarter,
      languagePair: null == languagePair
          ? _value.languagePair
          : languagePair // ignore: cast_nullable_to_non_nullable
              as LanguagePair,
      nextReviewDate: null == nextReviewDate
          ? _value.nextReviewDate
          : nextReviewDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      repetitionCount: null == repetitionCount
          ? _value.repetitionCount
          : repetitionCount // ignore: cast_nullable_to_non_nullable
              as int,
      easeFactor: null == easeFactor
          ? _value.easeFactor
          : easeFactor // ignore: cast_nullable_to_non_nullable
              as double,
      isMastered: null == isMastered
          ? _value.isMastered
          : isMastered // ignore: cast_nullable_to_non_nullable
              as bool,
      lastReviewedAt: freezed == lastReviewedAt
          ? _value.lastReviewedAt
          : lastReviewedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConversationStarterReviewImpl implements _ConversationStarterReview {
  const _$ConversationStarterReviewImpl(
      {this.id,
      this.lessonReviewId,
      required this.conversationStarter,
      required this.languagePair,
      required this.nextReviewDate,
      required this.repetitionCount,
      required this.easeFactor,
      this.isMastered = false,
      this.lastReviewedAt,
      required this.createdAt});

  factory _$ConversationStarterReviewImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConversationStarterReviewImplFromJson(json);

  @override
  final String? id;
  @override
  final String? lessonReviewId;
  @override
  final ConversationStarter conversationStarter;
  @override
  final LanguagePair languagePair;
  @override
  final DateTime nextReviewDate;
  @override
  final int repetitionCount;
  @override
  final double easeFactor;
  @override
  @JsonKey()
  final bool isMastered;
  @override
  final DateTime? lastReviewedAt;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'ConversationStarterReview(id: $id, lessonReviewId: $lessonReviewId, conversationStarter: $conversationStarter, languagePair: $languagePair, nextReviewDate: $nextReviewDate, repetitionCount: $repetitionCount, easeFactor: $easeFactor, isMastered: $isMastered, lastReviewedAt: $lastReviewedAt, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConversationStarterReviewImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.lessonReviewId, lessonReviewId) ||
                other.lessonReviewId == lessonReviewId) &&
            (identical(other.conversationStarter, conversationStarter) ||
                other.conversationStarter == conversationStarter) &&
            (identical(other.languagePair, languagePair) ||
                other.languagePair == languagePair) &&
            (identical(other.nextReviewDate, nextReviewDate) ||
                other.nextReviewDate == nextReviewDate) &&
            (identical(other.repetitionCount, repetitionCount) ||
                other.repetitionCount == repetitionCount) &&
            (identical(other.easeFactor, easeFactor) ||
                other.easeFactor == easeFactor) &&
            (identical(other.isMastered, isMastered) ||
                other.isMastered == isMastered) &&
            (identical(other.lastReviewedAt, lastReviewedAt) ||
                other.lastReviewedAt == lastReviewedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      lessonReviewId,
      conversationStarter,
      languagePair,
      nextReviewDate,
      repetitionCount,
      easeFactor,
      isMastered,
      lastReviewedAt,
      createdAt);

  /// Create a copy of ConversationStarterReview
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConversationStarterReviewImplCopyWith<_$ConversationStarterReviewImpl>
      get copyWith => __$$ConversationStarterReviewImplCopyWithImpl<
          _$ConversationStarterReviewImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConversationStarterReviewImplToJson(
      this,
    );
  }
}

abstract class _ConversationStarterReview implements ConversationStarterReview {
  const factory _ConversationStarterReview(
      {final String? id,
      final String? lessonReviewId,
      required final ConversationStarter conversationStarter,
      required final LanguagePair languagePair,
      required final DateTime nextReviewDate,
      required final int repetitionCount,
      required final double easeFactor,
      final bool isMastered,
      final DateTime? lastReviewedAt,
      required final DateTime createdAt}) = _$ConversationStarterReviewImpl;

  factory _ConversationStarterReview.fromJson(Map<String, dynamic> json) =
      _$ConversationStarterReviewImpl.fromJson;

  @override
  String? get id;
  @override
  String? get lessonReviewId;
  @override
  ConversationStarter get conversationStarter;
  @override
  LanguagePair get languagePair;
  @override
  DateTime get nextReviewDate;
  @override
  int get repetitionCount;
  @override
  double get easeFactor;
  @override
  bool get isMastered;
  @override
  DateTime? get lastReviewedAt;
  @override
  DateTime get createdAt;

  /// Create a copy of ConversationStarterReview
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConversationStarterReviewImplCopyWith<_$ConversationStarterReviewImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Conversation _$ConversationFromJson(Map<String, dynamic> json) {
  return _Conversation.fromJson(json);
}

/// @nodoc
mixin _$Conversation {
  String? get id => throw _privateConstructorUsedError;
  String? get lessonReviewId => throw _privateConstructorUsedError;
  TranslatedText get topic => throw _privateConstructorUsedError;
  LanguagePair get languagePair => throw _privateConstructorUsedError;
  List<Message> get messages => throw _privateConstructorUsedError;
  DateTime get lastMessagedAt => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this Conversation to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Conversation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConversationCopyWith<Conversation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConversationCopyWith<$Res> {
  factory $ConversationCopyWith(
          Conversation value, $Res Function(Conversation) then) =
      _$ConversationCopyWithImpl<$Res, Conversation>;
  @useResult
  $Res call(
      {String? id,
      String? lessonReviewId,
      TranslatedText topic,
      LanguagePair languagePair,
      List<Message> messages,
      DateTime lastMessagedAt,
      DateTime createdAt});

  $TranslatedTextCopyWith<$Res> get topic;
  $LanguagePairCopyWith<$Res> get languagePair;
}

/// @nodoc
class _$ConversationCopyWithImpl<$Res, $Val extends Conversation>
    implements $ConversationCopyWith<$Res> {
  _$ConversationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Conversation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? lessonReviewId = freezed,
    Object? topic = null,
    Object? languagePair = null,
    Object? messages = null,
    Object? lastMessagedAt = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      lessonReviewId: freezed == lessonReviewId
          ? _value.lessonReviewId
          : lessonReviewId // ignore: cast_nullable_to_non_nullable
              as String?,
      topic: null == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as TranslatedText,
      languagePair: null == languagePair
          ? _value.languagePair
          : languagePair // ignore: cast_nullable_to_non_nullable
              as LanguagePair,
      messages: null == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Message>,
      lastMessagedAt: null == lastMessagedAt
          ? _value.lastMessagedAt
          : lastMessagedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }

  /// Create a copy of Conversation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TranslatedTextCopyWith<$Res> get topic {
    return $TranslatedTextCopyWith<$Res>(_value.topic, (value) {
      return _then(_value.copyWith(topic: value) as $Val);
    });
  }

  /// Create a copy of Conversation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LanguagePairCopyWith<$Res> get languagePair {
    return $LanguagePairCopyWith<$Res>(_value.languagePair, (value) {
      return _then(_value.copyWith(languagePair: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ConversationImplCopyWith<$Res>
    implements $ConversationCopyWith<$Res> {
  factory _$$ConversationImplCopyWith(
          _$ConversationImpl value, $Res Function(_$ConversationImpl) then) =
      __$$ConversationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? lessonReviewId,
      TranslatedText topic,
      LanguagePair languagePair,
      List<Message> messages,
      DateTime lastMessagedAt,
      DateTime createdAt});

  @override
  $TranslatedTextCopyWith<$Res> get topic;
  @override
  $LanguagePairCopyWith<$Res> get languagePair;
}

/// @nodoc
class __$$ConversationImplCopyWithImpl<$Res>
    extends _$ConversationCopyWithImpl<$Res, _$ConversationImpl>
    implements _$$ConversationImplCopyWith<$Res> {
  __$$ConversationImplCopyWithImpl(
      _$ConversationImpl _value, $Res Function(_$ConversationImpl) _then)
      : super(_value, _then);

  /// Create a copy of Conversation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? lessonReviewId = freezed,
    Object? topic = null,
    Object? languagePair = null,
    Object? messages = null,
    Object? lastMessagedAt = null,
    Object? createdAt = null,
  }) {
    return _then(_$ConversationImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      lessonReviewId: freezed == lessonReviewId
          ? _value.lessonReviewId
          : lessonReviewId // ignore: cast_nullable_to_non_nullable
              as String?,
      topic: null == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as TranslatedText,
      languagePair: null == languagePair
          ? _value.languagePair
          : languagePair // ignore: cast_nullable_to_non_nullable
              as LanguagePair,
      messages: null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Message>,
      lastMessagedAt: null == lastMessagedAt
          ? _value.lastMessagedAt
          : lastMessagedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConversationImpl implements _Conversation {
  const _$ConversationImpl(
      {this.id,
      this.lessonReviewId,
      required this.topic,
      required this.languagePair,
      required final List<Message> messages,
      required this.lastMessagedAt,
      required this.createdAt})
      : _messages = messages;

  factory _$ConversationImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConversationImplFromJson(json);

  @override
  final String? id;
  @override
  final String? lessonReviewId;
  @override
  final TranslatedText topic;
  @override
  final LanguagePair languagePair;
  final List<Message> _messages;
  @override
  List<Message> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  final DateTime lastMessagedAt;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'Conversation(id: $id, lessonReviewId: $lessonReviewId, topic: $topic, languagePair: $languagePair, messages: $messages, lastMessagedAt: $lastMessagedAt, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConversationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.lessonReviewId, lessonReviewId) ||
                other.lessonReviewId == lessonReviewId) &&
            (identical(other.topic, topic) || other.topic == topic) &&
            (identical(other.languagePair, languagePair) ||
                other.languagePair == languagePair) &&
            const DeepCollectionEquality().equals(other._messages, _messages) &&
            (identical(other.lastMessagedAt, lastMessagedAt) ||
                other.lastMessagedAt == lastMessagedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      lessonReviewId,
      topic,
      languagePair,
      const DeepCollectionEquality().hash(_messages),
      lastMessagedAt,
      createdAt);

  /// Create a copy of Conversation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConversationImplCopyWith<_$ConversationImpl> get copyWith =>
      __$$ConversationImplCopyWithImpl<_$ConversationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConversationImplToJson(
      this,
    );
  }
}

abstract class _Conversation implements Conversation {
  const factory _Conversation(
      {final String? id,
      final String? lessonReviewId,
      required final TranslatedText topic,
      required final LanguagePair languagePair,
      required final List<Message> messages,
      required final DateTime lastMessagedAt,
      required final DateTime createdAt}) = _$ConversationImpl;

  factory _Conversation.fromJson(Map<String, dynamic> json) =
      _$ConversationImpl.fromJson;

  @override
  String? get id;
  @override
  String? get lessonReviewId;
  @override
  TranslatedText get topic;
  @override
  LanguagePair get languagePair;
  @override
  List<Message> get messages;
  @override
  DateTime get lastMessagedAt;
  @override
  DateTime get createdAt;

  /// Create a copy of Conversation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConversationImplCopyWith<_$ConversationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

InsightReview _$InsightReviewFromJson(Map<String, dynamic> json) {
  return _InsightReview.fromJson(json);
}

/// @nodoc
mixin _$InsightReview {
  String? get id => throw _privateConstructorUsedError;
  String get lessonReviewId => throw _privateConstructorUsedError;
  Insight get insight => throw _privateConstructorUsedError;
  LanguagePair get languagePair => throw _privateConstructorUsedError;
  DateTime get nextReviewDate => throw _privateConstructorUsedError;
  int get repetitionCount => throw _privateConstructorUsedError;
  double get easeFactor => throw _privateConstructorUsedError;
  bool get isMastered => throw _privateConstructorUsedError;
  DateTime? get lastReviewedAt => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this InsightReview to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InsightReview
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InsightReviewCopyWith<InsightReview> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InsightReviewCopyWith<$Res> {
  factory $InsightReviewCopyWith(
          InsightReview value, $Res Function(InsightReview) then) =
      _$InsightReviewCopyWithImpl<$Res, InsightReview>;
  @useResult
  $Res call(
      {String? id,
      String lessonReviewId,
      Insight insight,
      LanguagePair languagePair,
      DateTime nextReviewDate,
      int repetitionCount,
      double easeFactor,
      bool isMastered,
      DateTime? lastReviewedAt,
      DateTime createdAt});

  $InsightCopyWith<$Res> get insight;
  $LanguagePairCopyWith<$Res> get languagePair;
}

/// @nodoc
class _$InsightReviewCopyWithImpl<$Res, $Val extends InsightReview>
    implements $InsightReviewCopyWith<$Res> {
  _$InsightReviewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InsightReview
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? lessonReviewId = null,
    Object? insight = null,
    Object? languagePair = null,
    Object? nextReviewDate = null,
    Object? repetitionCount = null,
    Object? easeFactor = null,
    Object? isMastered = null,
    Object? lastReviewedAt = freezed,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      lessonReviewId: null == lessonReviewId
          ? _value.lessonReviewId
          : lessonReviewId // ignore: cast_nullable_to_non_nullable
              as String,
      insight: null == insight
          ? _value.insight
          : insight // ignore: cast_nullable_to_non_nullable
              as Insight,
      languagePair: null == languagePair
          ? _value.languagePair
          : languagePair // ignore: cast_nullable_to_non_nullable
              as LanguagePair,
      nextReviewDate: null == nextReviewDate
          ? _value.nextReviewDate
          : nextReviewDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      repetitionCount: null == repetitionCount
          ? _value.repetitionCount
          : repetitionCount // ignore: cast_nullable_to_non_nullable
              as int,
      easeFactor: null == easeFactor
          ? _value.easeFactor
          : easeFactor // ignore: cast_nullable_to_non_nullable
              as double,
      isMastered: null == isMastered
          ? _value.isMastered
          : isMastered // ignore: cast_nullable_to_non_nullable
              as bool,
      lastReviewedAt: freezed == lastReviewedAt
          ? _value.lastReviewedAt
          : lastReviewedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }

  /// Create a copy of InsightReview
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $InsightCopyWith<$Res> get insight {
    return $InsightCopyWith<$Res>(_value.insight, (value) {
      return _then(_value.copyWith(insight: value) as $Val);
    });
  }

  /// Create a copy of InsightReview
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LanguagePairCopyWith<$Res> get languagePair {
    return $LanguagePairCopyWith<$Res>(_value.languagePair, (value) {
      return _then(_value.copyWith(languagePair: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InsightReviewImplCopyWith<$Res>
    implements $InsightReviewCopyWith<$Res> {
  factory _$$InsightReviewImplCopyWith(
          _$InsightReviewImpl value, $Res Function(_$InsightReviewImpl) then) =
      __$$InsightReviewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String lessonReviewId,
      Insight insight,
      LanguagePair languagePair,
      DateTime nextReviewDate,
      int repetitionCount,
      double easeFactor,
      bool isMastered,
      DateTime? lastReviewedAt,
      DateTime createdAt});

  @override
  $InsightCopyWith<$Res> get insight;
  @override
  $LanguagePairCopyWith<$Res> get languagePair;
}

/// @nodoc
class __$$InsightReviewImplCopyWithImpl<$Res>
    extends _$InsightReviewCopyWithImpl<$Res, _$InsightReviewImpl>
    implements _$$InsightReviewImplCopyWith<$Res> {
  __$$InsightReviewImplCopyWithImpl(
      _$InsightReviewImpl _value, $Res Function(_$InsightReviewImpl) _then)
      : super(_value, _then);

  /// Create a copy of InsightReview
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? lessonReviewId = null,
    Object? insight = null,
    Object? languagePair = null,
    Object? nextReviewDate = null,
    Object? repetitionCount = null,
    Object? easeFactor = null,
    Object? isMastered = null,
    Object? lastReviewedAt = freezed,
    Object? createdAt = null,
  }) {
    return _then(_$InsightReviewImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      lessonReviewId: null == lessonReviewId
          ? _value.lessonReviewId
          : lessonReviewId // ignore: cast_nullable_to_non_nullable
              as String,
      insight: null == insight
          ? _value.insight
          : insight // ignore: cast_nullable_to_non_nullable
              as Insight,
      languagePair: null == languagePair
          ? _value.languagePair
          : languagePair // ignore: cast_nullable_to_non_nullable
              as LanguagePair,
      nextReviewDate: null == nextReviewDate
          ? _value.nextReviewDate
          : nextReviewDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      repetitionCount: null == repetitionCount
          ? _value.repetitionCount
          : repetitionCount // ignore: cast_nullable_to_non_nullable
              as int,
      easeFactor: null == easeFactor
          ? _value.easeFactor
          : easeFactor // ignore: cast_nullable_to_non_nullable
              as double,
      isMastered: null == isMastered
          ? _value.isMastered
          : isMastered // ignore: cast_nullable_to_non_nullable
              as bool,
      lastReviewedAt: freezed == lastReviewedAt
          ? _value.lastReviewedAt
          : lastReviewedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InsightReviewImpl implements _InsightReview {
  const _$InsightReviewImpl(
      {this.id,
      required this.lessonReviewId,
      required this.insight,
      required this.languagePair,
      required this.nextReviewDate,
      required this.repetitionCount,
      required this.easeFactor,
      this.isMastered = false,
      this.lastReviewedAt,
      required this.createdAt});

  factory _$InsightReviewImpl.fromJson(Map<String, dynamic> json) =>
      _$$InsightReviewImplFromJson(json);

  @override
  final String? id;
  @override
  final String lessonReviewId;
  @override
  final Insight insight;
  @override
  final LanguagePair languagePair;
  @override
  final DateTime nextReviewDate;
  @override
  final int repetitionCount;
  @override
  final double easeFactor;
  @override
  @JsonKey()
  final bool isMastered;
  @override
  final DateTime? lastReviewedAt;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'InsightReview(id: $id, lessonReviewId: $lessonReviewId, insight: $insight, languagePair: $languagePair, nextReviewDate: $nextReviewDate, repetitionCount: $repetitionCount, easeFactor: $easeFactor, isMastered: $isMastered, lastReviewedAt: $lastReviewedAt, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InsightReviewImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.lessonReviewId, lessonReviewId) ||
                other.lessonReviewId == lessonReviewId) &&
            (identical(other.insight, insight) || other.insight == insight) &&
            (identical(other.languagePair, languagePair) ||
                other.languagePair == languagePair) &&
            (identical(other.nextReviewDate, nextReviewDate) ||
                other.nextReviewDate == nextReviewDate) &&
            (identical(other.repetitionCount, repetitionCount) ||
                other.repetitionCount == repetitionCount) &&
            (identical(other.easeFactor, easeFactor) ||
                other.easeFactor == easeFactor) &&
            (identical(other.isMastered, isMastered) ||
                other.isMastered == isMastered) &&
            (identical(other.lastReviewedAt, lastReviewedAt) ||
                other.lastReviewedAt == lastReviewedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      lessonReviewId,
      insight,
      languagePair,
      nextReviewDate,
      repetitionCount,
      easeFactor,
      isMastered,
      lastReviewedAt,
      createdAt);

  /// Create a copy of InsightReview
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InsightReviewImplCopyWith<_$InsightReviewImpl> get copyWith =>
      __$$InsightReviewImplCopyWithImpl<_$InsightReviewImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InsightReviewImplToJson(
      this,
    );
  }
}

abstract class _InsightReview implements InsightReview {
  const factory _InsightReview(
      {final String? id,
      required final String lessonReviewId,
      required final Insight insight,
      required final LanguagePair languagePair,
      required final DateTime nextReviewDate,
      required final int repetitionCount,
      required final double easeFactor,
      final bool isMastered,
      final DateTime? lastReviewedAt,
      required final DateTime createdAt}) = _$InsightReviewImpl;

  factory _InsightReview.fromJson(Map<String, dynamic> json) =
      _$InsightReviewImpl.fromJson;

  @override
  String? get id;
  @override
  String get lessonReviewId;
  @override
  Insight get insight;
  @override
  LanguagePair get languagePair;
  @override
  DateTime get nextReviewDate;
  @override
  int get repetitionCount;
  @override
  double get easeFactor;
  @override
  bool get isMastered;
  @override
  DateTime? get lastReviewedAt;
  @override
  DateTime get createdAt;

  /// Create a copy of InsightReview
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InsightReviewImplCopyWith<_$InsightReviewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
