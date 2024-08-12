// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conversation_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConversationResponseImpl _$$ConversationResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ConversationResponseImpl(
      userMessageProcessed: TranslatedText.fromJson(
          json['userMessageProcessed'] as Map<String, dynamic>),
      systemMessage: json['systemMessage'] == null
          ? null
          : TranslatedText.fromJson(
              json['systemMessage'] as Map<String, dynamic>),
      assistantReply: TranslatedText.fromJson(
          json['assistantReply'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ConversationResponseImplToJson(
        _$ConversationResponseImpl instance) =>
    <String, dynamic>{
      'userMessageProcessed': instance.userMessageProcessed,
      'systemMessage': instance.systemMessage,
      'assistantReply': instance.assistantReply,
    };
