import 'dart:developer';
import 'dart:typed_data';

import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:lexiverse/data/model/language.dart';
import 'package:lexiverse/data/model/learning_reason.dart';
import 'package:lexiverse/data/model/lesson.model.dart';
import 'package:lexiverse/data/model/preferences.dart';
import 'package:lexiverse/data/model/proficiency_level.dart';
import 'package:lexiverse/main.dart';
import 'package:lexiverse/services/generation_attempt_mixin.dart';

class LanguageLessonService with GenerationAttemptMixin {
  final Preferences preferences;
  late final GenerativeModel _model;

  LanguageLessonService(this.preferences) {
    _initModel();
  }

  void _initModel() {
    final baseSystemInstruction = """
You are a language learning mobile app, where the user takes a photo of their surroundings. Create a language learning lesson based on the provided image. The lesson should be tailored for a learner at the ${preferences.proficiencyLevel!.description} level, with ${preferences.learningLanguage!.displayName} as the target language and ${preferences.nativeLanguage!.displayName} as the native language.
""";

    final learningReasonInstruction =
        preferences.learningReason!.learningReasonInstruction;

    final systemInstruction = """
The lesson must include:

1. A brief summary title for the lesson in both languages.  
2. Five short descriptive sentences about the image in both languages.  
3. Each conversation starter must include a short summarization of the conversation in both languages.
4. Three conversation starters related to the image, each with 4 exchanges, using typical ${preferences.learningLanguage!.displayName} names.
5. The last message should be prompting and encouraging the next speaker to continue in a natural way instead of directly.
6. A list of seven relevant vocabulary words or phrases.
7. Two grammar insights related to the used language, explained in ${preferences.nativeLanguage!.displayName}.
8. One cultural insight related to the image or conversations, explained in ${preferences.nativeLanguage!.displayName}.

Ensure all content is appropriate for the ${preferences.proficiencyLevel!.description} (${preferences.proficiencyLevel!.name.toUpperCase()}) proficiency level. Use simple structures and common vocabulary for ${preferences.proficiencyLevel!.description} learners. Focus on practical, everyday language related to the image.

For all text content, provide both ${preferences.nativeLanguage!.displayName} (baseText) and ${preferences.learningLanguage!.displayName} (targetText) versions.

All of the JSON fields are required.
""";

    _model = GenerativeModel(
      model: 'gemini-1.5-pro-exp-0801',
      apiKey: apiKey,
      generationConfig: GenerationConfig(
        responseMimeType: 'application/json',
        responseSchema: Schema.object(properties: {
          'title': Schema.object(properties: {
            'baseText':
                Schema.string(description: 'Title in the native language'),
            'targetText':
                Schema.string(description: 'Title in the target language'),
          }),
          'vocabulary': Schema.array(
              items: Schema.object(properties: {
            'baseText':
                Schema.string(description: 'Word in the native language'),
            'targetText':
                Schema.string(description: 'Word in the target language'),
          })),
          'description': Schema.array(
              items: Schema.object(properties: {
            'baseText': Schema.string(
                description: 'Description in the native language'),
            'targetText': Schema.string(
                description: 'Description in the target language'),
          })),
          'conversationStarters': Schema.array(
              items: Schema.object(properties: {
            'topic': Schema.object(properties: {
              'baseText': Schema.string(
                  description:
                      'Short summary of the conversation in native language'),
              'targetText': Schema.string(
                  description:
                      'Short summary of the conversation topic in target language'),
            }),
            'messages': Schema.array(
                items: Schema.object(properties: {
              'speaker': Schema.string(description: 'Name of the speaker'),
              'message': Schema.object(properties: {
                'baseText':
                    Schema.string(description: 'Message in native language'),
                'targetText':
                    Schema.string(description: 'Message in target language'),
              }),
            })),
          })),
          'grammarInsights': Schema.array(
              items: Schema.object(properties: {
            'type': Schema.string(
                description: 'Type of insight (grammar) all lowercase'),
            'title': Schema.string(description: 'Title of the grammar point'),
            'explanation': Schema.string(
                description:
                    'Explanation of the grammar point in native language'),
          })),
          'cultureInsights': Schema.array(
              items: Schema.object(properties: {
            'type': Schema.string(
                description: 'Type of insight (culture) all lowercase'),
            'title':
                Schema.string(description: 'Title of the cultural insight'),
            'explanation': Schema.string(
                description:
                    'Explanation of the cultural insight in native language'),
          })),
        }),
      ),
      systemInstruction: Content.system(baseSystemInstruction +
          learningReasonInstruction +
          systemInstruction),
    );
  }

  Future<Lesson> generateLesson({required Uint8List imageBytes}) async {
    const prompt = "Generate a language learning lesson based on this image.";
    final content = [
      Content.multi([TextPart(prompt), DataPart('image/jpeg', imageBytes)])
    ];

    try {
      return await generateWithRetry(
          _model, content, (json) => Lesson.fromJson(json));
    } catch (e) {
      log('Lesson generation failed: $e');
      rethrow;
    }
  }
}
