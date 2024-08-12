import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';
import 'package:lexiverse/data/model/lesson.model.dart';
import 'package:lexiverse/data/model/preferences.dart';
import 'package:lexiverse/data/repository/hive_preferences_repository.dart';
import 'package:lexiverse/home/home_screen.dart';
import 'package:lexiverse/notifiers/preferences_notifier.dart';
import 'package:lexiverse/settings/native_language_selector_screen.dart';
import 'package:path_provider/path_provider.dart';

const apiKey = 'YOUR_GEMINI_API_KEY';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final directory = await getApplicationDocumentsDirectory();
  Hive.defaultDirectory = directory.path;

  Hive.registerAdapter('Preferences',
      (json) => Preferences.fromJson(json as Map<String, dynamic>));
  Hive.registerAdapter('LessonReview',
      (json) => LessonReview.fromJson(json as Map<String, dynamic>));
  Hive.registerAdapter('VocabularyReview',
      (json) => VocabularyReview.fromJson(json as Map<String, dynamic>));
  Hive.registerAdapter('DescriptionReview',
      (json) => DescriptionReview.fromJson(json as Map<String, dynamic>));
  Hive.registerAdapter(
      'ConversationStarterReview',
      (json) =>
          ConversationStarterReview.fromJson(json as Map<String, dynamic>));
  Hive.registerAdapter('InsightReview',
      (json) => InsightReview.fromJson(json as Map<String, dynamic>));

  final repository = HivePreferencesRepository();
  repository.init();

  runApp(ProviderScope(
    overrides: [
      preferencesRepositoryProvider.overrideWithValue(repository),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final preferences = ref.read(preferencesNotifierProvider);

    return MaterialApp(
        title: 'Lexiverse',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            brightness: Brightness.dark,
            seedColor: const Color.fromARGB(255, 171, 222, 244),
          ),
        ),
        home: (preferences.nativeLanguage == null ||
                preferences.learningLanguage == null ||
                preferences.learningReason == null)
            ? const NativeLanguageSelectorScreen()
            : const HomeScreen());
  }
}
