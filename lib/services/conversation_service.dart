import 'dart:convert';
import 'dart:developer';

import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:lexiverse/data/model/conversation_response.dart';
import 'package:lexiverse/data/model/language.dart';
import 'package:lexiverse/data/model/lesson.model.dart';
import 'package:lexiverse/data/model/proficiency_level.dart';
import 'package:lexiverse/main.dart';
import 'package:lexiverse/services/generation_attempt_mixin.dart';

class ConversationService with GenerationAttemptMixin {
  final LanguagePair languagePair;
  final String speaker1;
  final String speaker2;
  final List<String> history;
  late final GenerativeModel _model;
  late final ChatSession _chat;

  ConversationService({
    required this.languagePair,
    required this.speaker1,
    required this.speaker2,
    required this.history,
  }) {
    _initModel();
  }

  void _initModel() {
    final systemInstruction = """
You are a language learning assistant. Your task is to help the user practice ${languagePair.targetLanguage.displayName} at a ${languagePair.proficiencyLevel.description} level. The user's native language is ${languagePair.baseLanguage.displayName}, by role playing a conversation.

In this conversation, the user is $speaker1 and you are $speaker2.

For each user message:
1. If it's in the target language (${languagePair.targetLanguage.displayName}):
   - Check for grammar and usage errors.
   - If there are errors, provide a "System" message explaining the corrections. Then apply the correction and reply with their corrected ${languagePair.targetLanguage.displayName} and native language (${languagePair.baseLanguage.displayName}).
   - If correct, simply translate it to the native language (${languagePair.baseLanguage.displayName}).

2. If it's in the native language (${languagePair.baseLanguage.displayName}):
   - Translate it to the target language (${languagePair.targetLanguage.displayName}).

3. Generate an appropriate response in the target language (${languagePair.targetLanguage.displayName}) with its translation in the native language (${languagePair.baseLanguage.displayName}).

The end structure for each message should look something like this:
{
  "userMessageProcessed": {
    "baseText": "User's message in ${languagePair.baseLanguage.displayName}",
    "targetText": "User's message in ${languagePair.targetLanguage.displayName}"
  },
  (optional) "systemMessage": {
    "baseText": "Very short and brief explanation of corrections (if any) in ${languagePair.baseLanguage.displayName}",
    "targetText": "Explanation of corrections (if any) in ${languagePair.baseLanguage.displayName} in full, as a learning point."
  },
  "assistantReply": {
    "baseText": "Assistant's reply in ${languagePair.baseLanguage.displayName}",
    "targetText": "Assistant's reply in ${languagePair.targetLanguage.displayName}"
  }
}

Ensure all responses are appropriate for the ${languagePair.proficiencyLevel.description} level.
""";

    _model = GenerativeModel(
      model: 'gemini-1.5-pro-latest',
      apiKey: apiKey,
      generationConfig: GenerationConfig(
        responseMimeType: 'application/json',
      ),
      systemInstruction: Content.system(systemInstruction),
    );

    _chat = _model.startChat(
      history: history.map((m) => Content.text(m)).toList(),
    );
  }

  Future<ConversationResponse> sendMessage(String userMessage) async {
    try {
      final response = await _chat.sendMessage(Content.text(userMessage));

      final json = jsonDecode(response.text ?? '');

      return ConversationResponse.fromJson(json);
    } catch (e) {
      log('Message processing failed: $e');
      rethrow;
    }
  }
}
