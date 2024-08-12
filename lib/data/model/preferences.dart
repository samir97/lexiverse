import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lexiverse/data/model/language.dart';
import 'package:lexiverse/data/model/learning_reason.dart';
import 'package:lexiverse/data/model/proficiency_level.dart';

part 'preferences.freezed.dart';
part 'preferences.g.dart';

@freezed
class Preferences with _$Preferences {
  factory Preferences({
    Language? nativeLanguage,
    Language? learningLanguage,
    ProficiencyLevel? proficiencyLevel,
    LearningReason? learningReason,
  }) = _Preferences;

  factory Preferences.fromJson(Map<String, dynamic> json) =>
      _$PreferencesFromJson(json);
}
