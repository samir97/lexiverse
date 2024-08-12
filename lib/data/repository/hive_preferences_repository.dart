import 'package:hive/hive.dart';
import 'package:lexiverse/data/model/preferences.dart';
import 'package:lexiverse/data/repository/preferences_repository.dart';

class HivePreferencesRepository implements PreferencesRepository {
  static const String _boxName = 'preferences';
  static const String _preferencesKey = 'user_preferences';

  late Box<Map> _box;

  void init() async {
    _box = Hive.box(name: _boxName);
  }

  @override
  Preferences? getPreferences() {
    final json = _box.get(_preferencesKey);
    return json != null
        ? Preferences.fromJson(json.cast<String, dynamic>())
        : null;
  }

  @override
  void savePreferences(Preferences preferences) {
    _box.put(_preferencesKey, preferences.toJson());
  }

  @override
  void updatePreferences(Preferences preferences) {
    savePreferences(preferences);
  }

  @override
  void clearPreferences() {
    _box.delete(_preferencesKey);
  }
}
