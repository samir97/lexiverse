// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'preferences.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PreferencesImpl _$$PreferencesImplFromJson(Map<String, dynamic> json) =>
    _$PreferencesImpl(
      nativeLanguage:
          $enumDecodeNullable(_$LanguageEnumMap, json['nativeLanguage']),
      learningLanguage:
          $enumDecodeNullable(_$LanguageEnumMap, json['learningLanguage']),
      proficiencyLevel: $enumDecodeNullable(
          _$ProficiencyLevelEnumMap, json['proficiencyLevel']),
      learningReason:
          $enumDecodeNullable(_$LearningReasonEnumMap, json['learningReason']),
    );

Map<String, dynamic> _$$PreferencesImplToJson(_$PreferencesImpl instance) =>
    <String, dynamic>{
      'nativeLanguage': _$LanguageEnumMap[instance.nativeLanguage],
      'learningLanguage': _$LanguageEnumMap[instance.learningLanguage],
      'proficiencyLevel': _$ProficiencyLevelEnumMap[instance.proficiencyLevel],
      'learningReason': _$LearningReasonEnumMap[instance.learningReason],
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

const _$LearningReasonEnumMap = {
  LearningReason.general: 'general',
  LearningReason.travel: 'travel',
  LearningReason.business: 'business',
  LearningReason.love: 'love',
  LearningReason.culture: 'culture',
  LearningReason.academics: 'academics',
  LearningReason.career: 'career',
  LearningReason.entertainment: 'entertainment',
  LearningReason.heritage: 'heritage',
  LearningReason.humanitarian: 'humanitarian',
  LearningReason.relocation: 'relocation',
};
