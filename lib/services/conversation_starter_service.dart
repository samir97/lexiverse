import 'dart:developer';

import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:lexiverse/data/model/language.dart';
import 'package:lexiverse/data/model/lesson.model.dart';
import 'package:lexiverse/data/model/preferences.dart';
import 'package:lexiverse/data/model/proficiency_level.dart';
import 'package:lexiverse/main.dart';
import 'package:lexiverse/services/generation_attempt_mixin.dart';

class ConversationStarterService with GenerationAttemptMixin {
  final Preferences preferences;
  late final GenerativeModel _model;

  ConversationStarterService(this.preferences) {
    _initModel();
  }

  void _initModel() {
    final systemInstruction = """
You are an AI-powered language learning assistant for a mobile app. Your task is to craft engaging, culturally authentic conversation starters in ${preferences.learningLanguage!.displayName}. Use the provided vocabulary words to create content tailored for a ${preferences.proficiencyLevel!.description} (${preferences.proficiencyLevel!.name.toUpperCase()}) level learner of ${preferences.learningLanguage!.displayName}, with ${preferences.nativeLanguage!.displayName} as their native language.

Guidelines:
1. Create three distinct conversation starters, each incorporating the given words naturally.
2. Structure each starter with four exchanges between two speakers.
3. Use culturally appropriate ${preferences.learningLanguage!.displayName} names for speakers.
4. Ensure all content is level-appropriate, engaging, and culturally relevant.
5. Focus on practical, everyday scenarios related to the given words.
6. Incorporate culturally specific elements relevant to ${preferences.learningLanguage!.displayName}-speaking cultures.
7. Create openings that encourage continuation of the conversation beyond the provided exchanges.

Provide all text content in both ${preferences.nativeLanguage!.displayName} (baseText) and ${preferences.learningLanguage!.displayName} (targetText) versions.

Ensure that baseText and targetText are always in different languages as specified.
""";

    _model = GenerativeModel(
      model: 'gemini-1.5-pro-exp-0801',
      apiKey: apiKey,
      generationConfig: GenerationConfig(
        temperature: 0.7,
        topK: 40,
        topP: 0.95,
        maxOutputTokens: 1024,
        responseMimeType: 'application/json',
        responseSchema: Schema.object(properties: {
          'conversationStarters': Schema.array(
            items: Schema.object(properties: {
              'topic': Schema.object(properties: {
                'baseText': Schema.string(
                  description:
                      'Short summary of the conversation in ${preferences.nativeLanguage!.displayName}',
                ),
                'targetText': Schema.string(
                  description:
                      'Short summary of the conversation topic in ${preferences.learningLanguage!.displayName}',
                ),
              }),
              'messages': Schema.array(
                items: Schema.object(properties: {
                  'speaker': Schema.string(description: 'Name of the speaker'),
                  'message': Schema.object(properties: {
                    'baseText': Schema.string(
                      description:
                          'Message in ${preferences.nativeLanguage!.displayName}',
                    ),
                    'targetText': Schema.string(
                      description:
                          'Message in ${preferences.learningLanguage!.displayName}',
                    ),
                  }),
                }),
              ),
            }),
          ),
        }),
      ),
      systemInstruction: Content.system(systemInstruction),
    );
  }

  Future<List<ConversationStarter>> generateConversationStarters(
      List<String> vocabularyWords) async {
    if (vocabularyWords.isEmpty) return [];

    final prompt = """
Generate three conversation starters using the following vocabulary words: ${vocabularyWords.join(', ')}.

Ensure that each conversation starter:
1. Incorporates the given vocabulary words naturally.
2. Is appropriate for a ${preferences.proficiencyLevel!.description} level learner.
3. Uses culturally relevant contexts and names.
4. Consists of four exchanges between two speakers.
5. Encourages further conversation beyond the provided exchanges.

Format the output as a valid JSON object with the structure defined in the response schema.
""";

    final content = [Content.text(prompt)];

    try {
      return await generateWithRetry(
        _model,
        content,
        (json) {
          if (json['conversationStarters'] == null ||
              json['conversationStarters'] is! List) {
            throw const FormatException('Invalid JSON structure');
          }
          return (json['conversationStarters'] as List)
              .map((starter) => ConversationStarter.fromJson(starter))
              .toList();
        },
      );
    } catch (e) {
      log('Conversation starters generation failed: $e');
      rethrow;
    }
  }
}
