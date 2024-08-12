// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'conversation_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ConversationResponse _$ConversationResponseFromJson(Map<String, dynamic> json) {
  return _ConversationResponse.fromJson(json);
}

/// @nodoc
mixin _$ConversationResponse {
  TranslatedText get userMessageProcessed => throw _privateConstructorUsedError;
  TranslatedText? get systemMessage => throw _privateConstructorUsedError;
  TranslatedText get assistantReply => throw _privateConstructorUsedError;

  /// Serializes this ConversationResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConversationResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConversationResponseCopyWith<ConversationResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConversationResponseCopyWith<$Res> {
  factory $ConversationResponseCopyWith(ConversationResponse value,
          $Res Function(ConversationResponse) then) =
      _$ConversationResponseCopyWithImpl<$Res, ConversationResponse>;
  @useResult
  $Res call(
      {TranslatedText userMessageProcessed,
      TranslatedText? systemMessage,
      TranslatedText assistantReply});

  $TranslatedTextCopyWith<$Res> get userMessageProcessed;
  $TranslatedTextCopyWith<$Res>? get systemMessage;
  $TranslatedTextCopyWith<$Res> get assistantReply;
}

/// @nodoc
class _$ConversationResponseCopyWithImpl<$Res,
        $Val extends ConversationResponse>
    implements $ConversationResponseCopyWith<$Res> {
  _$ConversationResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConversationResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userMessageProcessed = null,
    Object? systemMessage = freezed,
    Object? assistantReply = null,
  }) {
    return _then(_value.copyWith(
      userMessageProcessed: null == userMessageProcessed
          ? _value.userMessageProcessed
          : userMessageProcessed // ignore: cast_nullable_to_non_nullable
              as TranslatedText,
      systemMessage: freezed == systemMessage
          ? _value.systemMessage
          : systemMessage // ignore: cast_nullable_to_non_nullable
              as TranslatedText?,
      assistantReply: null == assistantReply
          ? _value.assistantReply
          : assistantReply // ignore: cast_nullable_to_non_nullable
              as TranslatedText,
    ) as $Val);
  }

  /// Create a copy of ConversationResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TranslatedTextCopyWith<$Res> get userMessageProcessed {
    return $TranslatedTextCopyWith<$Res>(_value.userMessageProcessed, (value) {
      return _then(_value.copyWith(userMessageProcessed: value) as $Val);
    });
  }

  /// Create a copy of ConversationResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TranslatedTextCopyWith<$Res>? get systemMessage {
    if (_value.systemMessage == null) {
      return null;
    }

    return $TranslatedTextCopyWith<$Res>(_value.systemMessage!, (value) {
      return _then(_value.copyWith(systemMessage: value) as $Val);
    });
  }

  /// Create a copy of ConversationResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TranslatedTextCopyWith<$Res> get assistantReply {
    return $TranslatedTextCopyWith<$Res>(_value.assistantReply, (value) {
      return _then(_value.copyWith(assistantReply: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ConversationResponseImplCopyWith<$Res>
    implements $ConversationResponseCopyWith<$Res> {
  factory _$$ConversationResponseImplCopyWith(_$ConversationResponseImpl value,
          $Res Function(_$ConversationResponseImpl) then) =
      __$$ConversationResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TranslatedText userMessageProcessed,
      TranslatedText? systemMessage,
      TranslatedText assistantReply});

  @override
  $TranslatedTextCopyWith<$Res> get userMessageProcessed;
  @override
  $TranslatedTextCopyWith<$Res>? get systemMessage;
  @override
  $TranslatedTextCopyWith<$Res> get assistantReply;
}

/// @nodoc
class __$$ConversationResponseImplCopyWithImpl<$Res>
    extends _$ConversationResponseCopyWithImpl<$Res, _$ConversationResponseImpl>
    implements _$$ConversationResponseImplCopyWith<$Res> {
  __$$ConversationResponseImplCopyWithImpl(_$ConversationResponseImpl _value,
      $Res Function(_$ConversationResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConversationResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userMessageProcessed = null,
    Object? systemMessage = freezed,
    Object? assistantReply = null,
  }) {
    return _then(_$ConversationResponseImpl(
      userMessageProcessed: null == userMessageProcessed
          ? _value.userMessageProcessed
          : userMessageProcessed // ignore: cast_nullable_to_non_nullable
              as TranslatedText,
      systemMessage: freezed == systemMessage
          ? _value.systemMessage
          : systemMessage // ignore: cast_nullable_to_non_nullable
              as TranslatedText?,
      assistantReply: null == assistantReply
          ? _value.assistantReply
          : assistantReply // ignore: cast_nullable_to_non_nullable
              as TranslatedText,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConversationResponseImpl implements _ConversationResponse {
  const _$ConversationResponseImpl(
      {required this.userMessageProcessed,
      this.systemMessage,
      required this.assistantReply});

  factory _$ConversationResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConversationResponseImplFromJson(json);

  @override
  final TranslatedText userMessageProcessed;
  @override
  final TranslatedText? systemMessage;
  @override
  final TranslatedText assistantReply;

  @override
  String toString() {
    return 'ConversationResponse(userMessageProcessed: $userMessageProcessed, systemMessage: $systemMessage, assistantReply: $assistantReply)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConversationResponseImpl &&
            (identical(other.userMessageProcessed, userMessageProcessed) ||
                other.userMessageProcessed == userMessageProcessed) &&
            (identical(other.systemMessage, systemMessage) ||
                other.systemMessage == systemMessage) &&
            (identical(other.assistantReply, assistantReply) ||
                other.assistantReply == assistantReply));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, userMessageProcessed, systemMessage, assistantReply);

  /// Create a copy of ConversationResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConversationResponseImplCopyWith<_$ConversationResponseImpl>
      get copyWith =>
          __$$ConversationResponseImplCopyWithImpl<_$ConversationResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConversationResponseImplToJson(
      this,
    );
  }
}

abstract class _ConversationResponse implements ConversationResponse {
  const factory _ConversationResponse(
          {required final TranslatedText userMessageProcessed,
          final TranslatedText? systemMessage,
          required final TranslatedText assistantReply}) =
      _$ConversationResponseImpl;

  factory _ConversationResponse.fromJson(Map<String, dynamic> json) =
      _$ConversationResponseImpl.fromJson;

  @override
  TranslatedText get userMessageProcessed;
  @override
  TranslatedText? get systemMessage;
  @override
  TranslatedText get assistantReply;

  /// Create a copy of ConversationResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConversationResponseImplCopyWith<_$ConversationResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
