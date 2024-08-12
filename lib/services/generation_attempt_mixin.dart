import 'dart:convert';
import 'dart:developer';

import 'package:google_generative_ai/google_generative_ai.dart';

mixin GenerationAttemptMixin {
  Future<T> attemptGeneration<T>(
    GenerativeModel model,
    List<Content> content,
    T Function(Map<String, dynamic>) fromJson,
  ) async {
    try {
      final response = await model.generateContent(content);
      final jsonResponse = json.decode(response.text!) as Map<String, dynamic>;
      return fromJson(jsonResponse);
    } catch (e) {
      log('Generation attempt failed: $e');
      rethrow;
    }
  }

  Future<T> generateWithRetry<T>(
    GenerativeModel model,
    List<Content> content,
    T Function(Map<String, dynamic>) fromJson, {
    int maxAttempts = 2,
  }) async {
    for (int i = 0; i < maxAttempts; i++) {
      try {
        return await attemptGeneration(model, content, fromJson);
      } catch (e) {
        log('Generation attempt ${i + 1} failed: $e');
        if (i == maxAttempts - 1) rethrow;
      }
    }
    throw Exception('Failed to generate after $maxAttempts attempts');
  }
}
