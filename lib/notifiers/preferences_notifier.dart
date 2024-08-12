import 'package:lexiverse/data/model/language.dart';
import 'package:lexiverse/data/model/learning_reason.dart';
import 'package:lexiverse/data/model/preferences.dart';
import 'package:lexiverse/data/model/proficiency_level.dart';
import 'package:lexiverse/data/repository/hive_preferences_repository.dart';
import 'package:lexiverse/data/repository/preferences_repository.dart';
import 'package:lexiverse/notifiers/lessons_notifiers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'preferences_notifier.g.dart';

const preferencesBox = 'preferencesBox';
const preferencesKey = 'preferences';

@riverpod
PreferencesRepository preferencesRepository(PreferencesRepositoryRef ref) {
  return HivePreferencesRepository();
}

@Riverpod(keepAlive: true)
class PreferencesNotifier extends _$PreferencesNotifier {
  late final PreferencesRepository _repository;

  @override
  Preferences build() {
    _repository = ref.read(preferencesRepositoryProvider);
    return _loadPreferences();
  }

  Preferences _loadPreferences() {
    return _repository.getPreferences() ?? Preferences();
  }

  void setNativeLanguage(Language language) {
    final preferences = state.copyWith(nativeLanguage: language);
    ref.invalidate(lessonsNotifierProvider);
    setPreferences(preferences);
  }

  void setLearningLanguage(Language language) {
    final preferences = state.copyWith(learningLanguage: language);
    setPreferences(preferences);
    ref.invalidate(lessonsNotifierProvider);
  }

  void setProficiencyLevel(ProficiencyLevel level) {
    final preferences = state.copyWith(proficiencyLevel: level);
    setPreferences(preferences);
  }

  void setLearningReason(LearningReason reason) {
    final preferences = state.copyWith(learningReason: reason);
    setPreferences(preferences);
  }

  void setPreferences(Preferences preferences) {
    state = preferences;
    _repository.savePreferences(preferences);
  }

  void updatePreferences(Preferences preferences) {
    state = preferences;
    _repository.updatePreferences(preferences);
  }

  void clearPreferences() {
    state = Preferences();
    _repository.clearPreferences();
  }
}
