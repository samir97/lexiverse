// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lesson.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LessonImpl _$$LessonImplFromJson(Map<String, dynamic> json) => _$LessonImpl(
      title: TranslatedText.fromJson(json['title'] as Map<String, dynamic>),
      vocabulary: (json['vocabulary'] as List<dynamic>)
          .map((e) => TranslatedText.fromJson(e as Map<String, dynamic>))
          .toList(),
      description: (json['description'] as List<dynamic>)
          .map((e) => TranslatedText.fromJson(e as Map<String, dynamic>))
          .toList(),
      conversationStarters: (json['conversationStarters'] as List<dynamic>)
          .map((e) => ConversationStarter.fromJson(e as Map<String, dynamic>))
          .toList(),
      grammarInsights: (json['grammarInsights'] as List<dynamic>)
          .map((e) => Insight.fromJson(e as Map<String, dynamic>))
          .toList(),
      cultureInsights: (json['cultureInsights'] as List<dynamic>)
          .map((e) => Insight.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$LessonImplToJson(_$LessonImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'vocabulary': instance.vocabulary,
      'description': instance.description,
      'conversationStarters': instance.conversationStarters,
      'grammarInsights': instance.grammarInsights,
      'cultureInsights': instance.cultureInsights,
    };

_$LanguagePairImpl _$$LanguagePairImplFromJson(Map<String, dynamic> json) =>
    _$LanguagePairImpl(
      baseLanguage: $enumDecode(_$LanguageEnumMap, json['baseLanguage']),
      targetLanguage: $enumDecode(_$LanguageEnumMap, json['targetLanguage']),
      proficiencyLevel:
          $enumDecode(_$ProficiencyLevelEnumMap, json['proficiencyLevel']),
    );

Map<String, dynamic> _$$LanguagePairImplToJson(_$LanguagePairImpl instance) =>
    <String, dynamic>{
      'baseLanguage': _$LanguageEnumMap[instance.baseLanguage]!,
      'targetLanguage': _$LanguageEnumMap[instance.targetLanguage]!,
      'proficiencyLevel': _$ProficiencyLevelEnumMap[instance.proficiencyLevel]!,
    };

const _$LanguageEnumMap = {
  Language.en: 'en',
  Language.es: 'es',
  Language.zh: 'zh',
  Language.hi: 'hi',
  Language.ar: 'ar',
  Language.bn: 'bn',
  Language.pt: 'pt',
  Language.ru: 'ru',
  Language.ja: 'ja',
  Language.de: 'de',
  Language.fr: 'fr',
  Language.tr: 'tr',
  Language.ko: 'ko',
  Language.it: 'it',
  Language.pl: 'pl',
  Language.uk: 'uk',
  Language.nl: 'nl',
  Language.fa: 'fa',
  Language.vi: 'vi',
  Language.ta: 'ta',
  Language.ur: 'ur',
  Language.sv: 'sv',
  Language.ro: 'ro',
  Language.el: 'el',
  Language.cs: 'cs',
  Language.hu: 'hu',
  Language.fi: 'fi',
  Language.id: 'id',
  Language.th: 'th',
  Language.bg: 'bg',
  Language.da: 'da',
  Language.he: 'he',
  Language.sk: 'sk',
  Language.no: 'no',
  Language.hr: 'hr',
  Language.lt: 'lt',
  Language.sl: 'sl',
  Language.et: 'et',
  Language.lv: 'lv',
  Language.sw: 'sw',
};

const _$ProficiencyLevelEnumMap = {
  ProficiencyLevel.a1: 'a1',
  ProficiencyLevel.a2: 'a2',
  ProficiencyLevel.b1: 'b1',
  ProficiencyLevel.b2: 'b2',
  ProficiencyLevel.c1: 'c1',
  ProficiencyLevel.c2: 'c2',
};

_$ImageUrlImpl _$$ImageUrlImplFromJson(Map<String, dynamic> json) =>
    _$ImageUrlImpl(
      small: json['small'] as String,
      medium: json['medium'] as String,
      large: json['large'] as String,
    );

Map<String, dynamic> _$$ImageUrlImplToJson(_$ImageUrlImpl instance) =>
    <String, dynamic>{
      'small': instance.small,
      'medium': instance.medium,
      'large': instance.large,
    };

_$TranslatedTextImpl _$$TranslatedTextImplFromJson(Map<String, dynamic> json) =>
    _$TranslatedTextImpl(
      baseText: json['baseText'] as String,
      targetText: json['targetText'] as String,
    );

Map<String, dynamic> _$$TranslatedTextImplToJson(
        _$TranslatedTextImpl instance) =>
    <String, dynamic>{
      'baseText': instance.baseText,
      'targetText': instance.targetText,
    };

_$MessageImpl _$$MessageImplFromJson(Map<String, dynamic> json) =>
    _$MessageImpl(
      speaker: json['speaker'] as String,
      message: TranslatedText.fromJson(json['message'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MessageImplToJson(_$MessageImpl instance) =>
    <String, dynamic>{
      'speaker': instance.speaker,
      'message': instance.message,
    };

_$ConversationStarterImpl _$$ConversationStarterImplFromJson(
        Map<String, dynamic> json) =>
    _$ConversationStarterImpl(
      topic: TranslatedText.fromJson(json['topic'] as Map<String, dynamic>),
      messages: (json['messages'] as List<dynamic>)
          .map((e) => Message.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ConversationStarterImplToJson(
        _$ConversationStarterImpl instance) =>
    <String, dynamic>{
      'topic': instance.topic,
      'messages': instance.messages,
    };

_$InsightImpl _$$InsightImplFromJson(Map<String, dynamic> json) =>
    _$InsightImpl(
      type: $enumDecode(_$InsightTypeEnumMap, json['type']),
      title: json['title'] as String,
      explanation: json['explanation'] as String,
    );

Map<String, dynamic> _$$InsightImplToJson(_$InsightImpl instance) =>
    <String, dynamic>{
      'type': _$InsightTypeEnumMap[instance.type]!,
      'title': instance.title,
      'explanation': instance.explanation,
    };

const _$InsightTypeEnumMap = {
  InsightType.grammar: 'grammar',
  InsightType.culture: 'culture',
};

_$LessonReviewImpl _$$LessonReviewImplFromJson(Map<String, dynamic> json) =>
    _$LessonReviewImpl(
      id: json['id'] as String?,
      isFavorite: json['isFavorite'] as bool? ?? false,
      lesson: Lesson.fromJson(json['lesson'] as Map<String, dynamic>),
      imageUrl: ImageUrl.fromJson(json['imageUrl'] as Map<String, dynamic>),
      languagePair:
          LanguagePair.fromJson(json['languagePair'] as Map<String, dynamic>),
      nextReviewDate: DateTime.parse(json['nextReviewDate'] as String),
      repetitionCount: (json['repetitionCount'] as num).toInt(),
      easeFactor: (json['easeFactor'] as num).toDouble(),
      isMastered: json['isMastered'] as bool? ?? false,
      lastReviewedAt: json['lastReviewedAt'] == null
          ? null
          : DateTime.parse(json['lastReviewedAt'] as String),
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$LessonReviewImplToJson(_$LessonReviewImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'isFavorite': instance.isFavorite,
      'lesson': instance.lesson,
      'imageUrl': instance.imageUrl,
      'languagePair': instance.languagePair,
      'nextReviewDate': instance.nextReviewDate.toIso8601String(),
      'repetitionCount': instance.repetitionCount,
      'easeFactor': instance.easeFactor,
      'isMastered': instance.isMastered,
      'lastReviewedAt': instance.lastReviewedAt?.toIso8601String(),
      'createdAt': instance.createdAt.toIso8601String(),
    };

_$VocabularyReviewImpl _$$VocabularyReviewImplFromJson(
        Map<String, dynamic> json) =>
    _$VocabularyReviewImpl(
      id: json['id'] as String?,
      lessonReviewId: json['lessonReviewId'] as String,
      word: TranslatedText.fromJson(json['word'] as Map<String, dynamic>),
      languagePair:
          LanguagePair.fromJson(json['languagePair'] as Map<String, dynamic>),
      nextReviewDate: DateTime.parse(json['nextReviewDate'] as String),
      repetitionCount: (json['repetitionCount'] as num).toInt(),
      easeFactor: (json['easeFactor'] as num).toDouble(),
      isMastered: json['isMastered'] as bool? ?? false,
      lastReviewedAt: json['lastReviewedAt'] == null
          ? null
          : DateTime.parse(json['lastReviewedAt'] as String),
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$VocabularyReviewImplToJson(
        _$VocabularyReviewImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'lessonReviewId': instance.lessonReviewId,
      'word': instance.word,
      'languagePair': instance.languagePair,
      'nextReviewDate': instance.nextReviewDate.toIso8601String(),
      'repetitionCount': instance.repetitionCount,
      'easeFactor': instance.easeFactor,
      'isMastered': instance.isMastered,
      'lastReviewedAt': instance.lastReviewedAt?.toIso8601String(),
      'createdAt': instance.createdAt.toIso8601String(),
    };

_$DescriptionReviewImpl _$$DescriptionReviewImplFromJson(
        Map<String, dynamic> json) =>
    _$DescriptionReviewImpl(
      id: json['id'] as String?,
      lessonReviewId: json['lessonReviewId'] as String,
      description:
          TranslatedText.fromJson(json['description'] as Map<String, dynamic>),
      languagePair:
          LanguagePair.fromJson(json['languagePair'] as Map<String, dynamic>),
      nextReviewDate: DateTime.parse(json['nextReviewDate'] as String),
      repetitionCount: (json['repetitionCount'] as num).toInt(),
      easeFactor: (json['easeFactor'] as num).toDouble(),
      isMastered: json['isMastered'] as bool? ?? false,
      lastReviewedAt: json['lastReviewedAt'] == null
          ? null
          : DateTime.parse(json['lastReviewedAt'] as String),
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$DescriptionReviewImplToJson(
        _$DescriptionReviewImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'lessonReviewId': instance.lessonReviewId,
      'description': instance.description,
      'languagePair': instance.languagePair,
      'nextReviewDate': instance.nextReviewDate.toIso8601String(),
      'repetitionCount': instance.repetitionCount,
      'easeFactor': instance.easeFactor,
      'isMastered': instance.isMastered,
      'lastReviewedAt': instance.lastReviewedAt?.toIso8601String(),
      'createdAt': instance.createdAt.toIso8601String(),
    };

_$ConversationStarterReviewImpl _$$ConversationStarterReviewImplFromJson(
        Map<String, dynamic> json) =>
    _$ConversationStarterReviewImpl(
      id: json['id'] as String?,
      lessonReviewId: json['lessonReviewId'] as String?,
      conversationStarter: ConversationStarter.fromJson(
          json['conversationStarter'] as Map<String, dynamic>),
      languagePair:
          LanguagePair.fromJson(json['languagePair'] as Map<String, dynamic>),
      nextReviewDate: DateTime.parse(json['nextReviewDate'] as String),
      repetitionCount: (json['repetitionCount'] as num).toInt(),
      easeFactor: (json['easeFactor'] as num).toDouble(),
      isMastered: json['isMastered'] as bool? ?? false,
      lastReviewedAt: json['lastReviewedAt'] == null
          ? null
          : DateTime.parse(json['lastReviewedAt'] as String),
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$ConversationStarterReviewImplToJson(
        _$ConversationStarterReviewImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'lessonReviewId': instance.lessonReviewId,
      'conversationStarter': instance.conversationStarter,
      'languagePair': instance.languagePair,
      'nextReviewDate': instance.nextReviewDate.toIso8601String(),
      'repetitionCount': instance.repetitionCount,
      'easeFactor': instance.easeFactor,
      'isMastered': instance.isMastered,
      'lastReviewedAt': instance.lastReviewedAt?.toIso8601String(),
      'createdAt': instance.createdAt.toIso8601String(),
    };

_$ConversationImpl _$$ConversationImplFromJson(Map<String, dynamic> json) =>
    _$ConversationImpl(
      id: json['id'] as String?,
      lessonReviewId: json['lessonReviewId'] as String?,
      topic: TranslatedText.fromJson(json['topic'] as Map<String, dynamic>),
      languagePair:
          LanguagePair.fromJson(json['languagePair'] as Map<String, dynamic>),
      messages: (json['messages'] as List<dynamic>)
          .map((e) => Message.fromJson(e as Map<String, dynamic>))
          .toList(),
      lastMessagedAt: DateTime.parse(json['lastMessagedAt'] as String),
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$ConversationImplToJson(_$ConversationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'lessonReviewId': instance.lessonReviewId,
      'topic': instance.topic,
      'languagePair': instance.languagePair,
      'messages': instance.messages,
      'lastMessagedAt': instance.lastMessagedAt.toIso8601String(),
      'createdAt': instance.createdAt.toIso8601String(),
    };

_$InsightReviewImpl _$$InsightReviewImplFromJson(Map<String, dynamic> json) =>
    _$InsightReviewImpl(
      id: json['id'] as String?,
      lessonReviewId: json['lessonReviewId'] as String,
      insight: Insight.fromJson(json['insight'] as Map<String, dynamic>),
      languagePair:
          LanguagePair.fromJson(json['languagePair'] as Map<String, dynamic>),
      nextReviewDate: DateTime.parse(json['nextReviewDate'] as String),
      repetitionCount: (json['repetitionCount'] as num).toInt(),
      easeFactor: (json['easeFactor'] as num).toDouble(),
      isMastered: json['isMastered'] as bool? ?? false,
      lastReviewedAt: json['lastReviewedAt'] == null
          ? null
          : DateTime.parse(json['lastReviewedAt'] as String),
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$InsightReviewImplToJson(_$InsightReviewImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'lessonReviewId': instance.lessonReviewId,
      'insight': instance.insight,
      'languagePair': instance.languagePair,
      'nextReviewDate': instance.nextReviewDate.toIso8601String(),
      'repetitionCount': instance.repetitionCount,
      'easeFactor': instance.easeFactor,
      'isMastered': instance.isMastered,
      'lastReviewedAt': instance.lastReviewedAt?.toIso8601String(),
      'createdAt': instance.createdAt.toIso8601String(),
    };
