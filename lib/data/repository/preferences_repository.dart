import 'package:lexiverse/data/model/preferences.dart';

abstract class PreferencesRepository {
  Preferences? getPreferences();
  void savePreferences(Preferences preferences);
  void updatePreferences(Preferences preferences);
  void clearPreferences();
}
