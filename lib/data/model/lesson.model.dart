import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lexiverse/data/model/language.dart';
import 'package:lexiverse/data/model/proficiency_level.dart';

part 'lesson.model.freezed.dart';
part 'lesson.model.g.dart';

enum InsightType { grammar, culture }

@freezed
class Lesson with _$Lesson {
  const factory Lesson({
    required TranslatedText title,
    required List<TranslatedText> vocabulary,
    required List<TranslatedText> description,
    required List<ConversationStarter> conversationStarters,
    required List<Insight> grammarInsights,
    required List<Insight> cultureInsights,
  }) = _Lesson;

  factory Lesson.fromJson(Map<String, dynamic> json) => _$LessonFromJson(json);
}

@freezed
class LanguagePair with _$LanguagePair {
  const factory LanguagePair({
    required Language baseLanguage,
    required Language targetLanguage,
    required ProficiencyLevel proficiencyLevel,
  }) = _LanguagePair;

  factory LanguagePair.fromJson(Map<String, dynamic> json) =>
      _$LanguagePairFromJson(json);
}

@freezed
class ImageUrl with _$ImageUrl {
  const factory ImageUrl({
    required String small,
    required String medium,
    required String large,
  }) = _ImageUrl;

  factory ImageUrl.fromJson(Map<String, dynamic> json) =>
      _$ImageUrlFromJson(json);
}

@freezed
class TranslatedText with _$TranslatedText {
  const factory TranslatedText({
    required String baseText,
    required String targetText,
  }) = _TranslatedText;

  factory TranslatedText.fromJson(Map<String, dynamic> json) =>
      _$TranslatedTextFromJson(json);
}

@freezed
class Message with _$Message {
  const factory Message({
    required String speaker,
    required TranslatedText message,
  }) = _Message;

  factory Message.fromJson(Map<String, dynamic> json) =>
      _$MessageFromJson(json);
}

@freezed
class ConversationStarter with _$ConversationStarter {
  const factory ConversationStarter({
    required TranslatedText topic,
    required List<Message> messages,
  }) = _ConversationStarter;

  factory ConversationStarter.fromJson(Map<String, dynamic> json) =>
      _$ConversationStarterFromJson(json);
}

@freezed
class Insight with _$Insight {
  const factory Insight({
    required InsightType type,
    required String title,
    required String explanation,
  }) = _Insight;

  factory Insight.fromJson(Map<String, dynamic> json) =>
      _$InsightFromJson(json);
}

@freezed
class LessonReview with _$LessonReview {
  const factory LessonReview({
    String? id,
    @Default(false) bool isFavorite,
    required Lesson lesson,
    required ImageUrl imageUrl,
    required LanguagePair languagePair,
    required DateTime nextReviewDate,
    required int repetitionCount,
    required double easeFactor,
    @Default(false) bool isMastered,
    DateTime? lastReviewedAt,
    required DateTime createdAt,
  }) = _LessonReview;

  factory LessonReview.fromJson(Map<String, dynamic> json) =>
      _$LessonReviewFromJson(json);
}

@freezed
class VocabularyReview with _$VocabularyReview {
  const factory VocabularyReview({
    String? id,
    required String lessonReviewId,
    required TranslatedText word,
    required LanguagePair languagePair,
    required DateTime nextReviewDate,
    required int repetitionCount,
    required double easeFactor,
    @Default(false) bool isMastered,
    DateTime? lastReviewedAt,
    required DateTime createdAt,
  }) = _VocabularyReview;

  factory VocabularyReview.fromJson(Map<String, dynamic> json) =>
      _$VocabularyReviewFromJson(json);
}

@freezed
class DescriptionReview with _$DescriptionReview {
  const factory DescriptionReview({
    String? id,
    required String lessonReviewId,
    required TranslatedText description,
    required LanguagePair languagePair,
    required DateTime nextReviewDate,
    required int repetitionCount,
    required double easeFactor,
    @Default(false) bool isMastered,
    DateTime? lastReviewedAt,
    required DateTime createdAt,
  }) = _DescriptionReview;

  factory DescriptionReview.fromJson(Map<String, dynamic> json) =>
      _$DescriptionReviewFromJson(json);
}

@freezed
class ConversationStarterReview with _$ConversationStarterReview {
  const factory ConversationStarterReview({
    String? id,
    String? lessonReviewId,
    required ConversationStarter conversationStarter,
    required LanguagePair languagePair,
    required DateTime nextReviewDate,
    required int repetitionCount,
    required double easeFactor,
    @Default(false) bool isMastered,
    DateTime? lastReviewedAt,
    required DateTime createdAt,
  }) = _ConversationStarterReview;

  factory ConversationStarterReview.fromJson(Map<String, dynamic> json) =>
      _$ConversationStarterReviewFromJson(json);
}

@freezed
class Conversation with _$Conversation {
  const factory Conversation({
    String? id,
    String? lessonReviewId,
    required TranslatedText topic,
    required LanguagePair languagePair,
    required List<Message> messages,
    required DateTime lastMessagedAt,
    required DateTime createdAt,
  }) = _Conversation;

  factory Conversation.fromJson(Map<String, dynamic> json) =>
      _$ConversationFromJson(json);
}

@freezed
class InsightReview with _$InsightReview {
  const factory InsightReview({
    String? id,
    required String lessonReviewId,
    required Insight insight,
    required LanguagePair languagePair,
    required DateTime nextReviewDate,
    required int repetitionCount,
    required double easeFactor,
    @Default(false) bool isMastered,
    DateTime? lastReviewedAt,
    required DateTime createdAt,
  }) = _InsightReview;

  factory InsightReview.fromJson(Map<String, dynamic> json) =>
      _$InsightReviewFromJson(json);
}
