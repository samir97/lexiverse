import 'dart:typed_data';

import 'package:lexiverse/data/model/lesson.model.dart';

abstract class LessonRepository {
  Future<
      (
        LessonReview,
        List<VocabularyReview>,
        List<DescriptionReview>,
        List<ConversationStarterReview>,
        List<InsightReview>
      )> generateLesson(Uint8List imageBytes, ImageUrl imageUrl);

  Future<List<ConversationStarterReview>> generateConversationStarters(
    List<String> vocabularyWords,
  );

  Future<List<LessonReview>> getAllLessons();
  Future<void> updateLessonReview(LessonReview lessonReview);
  Future<void> deleteLessonReview(String id);

  // Vocabulary Review methods
  Future<List<VocabularyReview>> getAllVocabulary();
  Future<void> updateVocabularyReview(VocabularyReview review);
  Future<void> deleteVocabularyReview(String id);

  // Description Review methods
  Future<List<DescriptionReview>> getAllDescription();
  Future<void> updateDescriptionReview(DescriptionReview review);
  Future<void> deleteDescriptionReview(String id);

  // Conversation Starter Review methods
  Future<List<ConversationStarterReview>> getAllConversationStarters();
  Future<void> updateConversationStarterReview(
      ConversationStarterReview review);
  Future<void> deleteConversationStarterReview(String id);

  // Insight Review methods
  Future<List<InsightReview>> getAllInsights();
  Future<void> updateInsightReview(InsightReview review);
  Future<void> deleteInsightReview(String id);
}
