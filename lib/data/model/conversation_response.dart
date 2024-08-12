import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lexiverse/data/model/lesson.model.dart';

part 'conversation_response.freezed.dart';
part 'conversation_response.g.dart';

@freezed
class ConversationResponse with _$ConversationResponse {
  const factory ConversationResponse({
    required TranslatedText userMessageProcessed,
    TranslatedText? systemMessage,
    required TranslatedText assistantReply,
  }) = _ConversationResponse;

  factory ConversationResponse.fromJson(Map<String, dynamic> json) =>
      _$ConversationResponseFromJson(json);
}
