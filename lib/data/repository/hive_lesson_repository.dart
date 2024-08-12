import 'dart:convert';
import 'dart:typed_data';

import 'package:hive/hive.dart';
import 'package:lexiverse/data/model/lesson.model.dart';
import 'package:lexiverse/data/model/preferences.dart';
import 'package:lexiverse/data/repository/lesson_repository.dart';
import 'package:lexiverse/notifiers/preferences_notifier.dart';
import 'package:lexiverse/services/conversation_starter_service.dart';
import 'package:lexiverse/services/lesson_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uuid/uuid.dart';

part 'hive_lesson_repository.g.dart';

@riverpod
LessonRepository lessonRepository(LessonRepositoryRef ref) {
  final preference = ref.read(preferencesNotifierProvider);

  return HiveLessonRepository(preference);
}

class HiveLessonRepository implements LessonRepository {
  final Preferences preferences;
  late final LanguageLessonService _languageLessonService;
  late final ConversationStarterService _conversationStarterService;

  HiveLessonRepository(this.preferences) {
    _initHive();
    _languageLessonService = LanguageLessonService(preferences);
    _conversationStarterService = ConversationStarterService(preferences);
  }

  late Box<LessonReview> _lessonReviewBox;
  late Box<VocabularyReview> _vocabularyReviewBox;
  late Box<DescriptionReview> _descriptionReviewBox;
  late Box<ConversationStarterReview> _conversationStarterReviewBox;
  late Box<InsightReview> _insightReviewBox;

  void _initHive() {
    _lessonReviewBox = Hive.box<LessonReview>(
        name:
            '${preferences.nativeLanguage!.name}_${preferences.learningLanguage!.name}_lesson_reviews');
    _vocabularyReviewBox = Hive.box<VocabularyReview>(
        name:
            '${preferences.nativeLanguage!.name}_${preferences.learningLanguage!.name}_vocabulary_reviews');
    _descriptionReviewBox = Hive.box<DescriptionReview>(
        name:
            '${preferences.nativeLanguage!.name}_${preferences.learningLanguage!.name}_description_reviews');
    _conversationStarterReviewBox = Hive.box<ConversationStarterReview>(
        name:
            '${preferences.nativeLanguage!.name}_${preferences.learningLanguage!.name}_conversation_starter_reviews');
    _insightReviewBox = Hive.box<InsightReview>(
        name:
            '${preferences.nativeLanguage!.name}_${preferences.learningLanguage!.name}_insight_reviews');
  }

  @override
  Future<
      (
        LessonReview,
        List<VocabularyReview>,
        List<DescriptionReview>,
        List<ConversationStarterReview>,
        List<InsightReview>
      )> generateLesson(Uint8List imageBytes, ImageUrl imageUrl) async {
    final lesson =
        await _languageLessonService.generateLesson(imageBytes: imageBytes);

    final lessonReview = LessonReview(
      id: const Uuid().v4(),
      lesson: lesson,
      imageUrl: imageUrl,
      languagePair: LanguagePair(
        baseLanguage: preferences.nativeLanguage!,
        targetLanguage: preferences.learningLanguage!,
        proficiencyLevel: preferences.proficiencyLevel!,
      ),
      nextReviewDate: DateTime.now().add(const Duration(days: 1)),
      repetitionCount: 0,
      easeFactor: 2.5,
      createdAt: DateTime.now(),
    );

    _lessonReviewBox.put(lessonReview.id!, lessonReview);

    final vocabularyReviews = await _saveVocabularyReviews(lessonReview);
    final descriptionReviews = await _saveDescriptionReviews(lessonReview);
    final conversationStarterReviews =
        await _saveConversationStarterReviews(lessonReview);
    final insightReviews = await _saveInsightReviews(lessonReview);

    return (
      lessonReview,
      vocabularyReviews,
      descriptionReviews,
      conversationStarterReviews,
      insightReviews
    );
  }

  @override
  Future<List<ConversationStarterReview>> generateConversationStarters(
    List<String> vocabularyWords,
  ) async {
    final conversationStarters = await _conversationStarterService
        .generateConversationStarters(vocabularyWords);

    final List<ConversationStarterReview> conversationStarterReviews = [];

    for (final conversationStarter in conversationStarters) {
      final conversationStarterReview = ConversationStarterReview(
        id: const Uuid().v4(),
        conversationStarter: conversationStarter,
        languagePair: LanguagePair(
          baseLanguage: preferences.nativeLanguage!,
          targetLanguage: preferences.learningLanguage!,
          proficiencyLevel: preferences.proficiencyLevel!,
        ),
        nextReviewDate: DateTime.now().add(const Duration(days: 1)),
        repetitionCount: 0,
        easeFactor: 2.5,
        createdAt: DateTime.now(),
      );
      _conversationStarterReviewBox.put(
          conversationStarterReview.id!, conversationStarterReview);
      conversationStarterReviews.add(conversationStarterReview);
    }

    return conversationStarterReviews;
  }

  String _sanitizeKey(String key) {
    return base64Url.encode(utf8.encode(key)).replaceAll('=', '');
  }

  Future<List<VocabularyReview>> _saveVocabularyReviews(
      LessonReview lessonReview) async {
    final List<VocabularyReview> vocabularyReviews = [];

    for (final word in lessonReview.lesson.vocabulary) {
      final String key = _sanitizeKey(word.targetText);

      final vocabularyReview = VocabularyReview(
        id: key,
        lessonReviewId: lessonReview.id!,
        word: word,
        languagePair: lessonReview.languagePair,
        nextReviewDate: DateTime.now().add(const Duration(days: 1)),
        repetitionCount: 0,
        easeFactor: 2.5,
        createdAt: DateTime.now(),
      );

      _vocabularyReviewBox.put(key, vocabularyReview);
      vocabularyReviews.add(vocabularyReview);
    }

    return vocabularyReviews;
  }

  Future<List<DescriptionReview>> _saveDescriptionReviews(
      LessonReview lessonReview) async {
    final List<DescriptionReview> descriptionReviews = [];

    for (final description in lessonReview.lesson.description) {
      final descriptionReview = DescriptionReview(
        id: const Uuid().v4(),
        lessonReviewId: lessonReview.id!,
        description: description,
        languagePair: lessonReview.languagePair,
        nextReviewDate: DateTime.now().add(const Duration(days: 1)),
        repetitionCount: 0,
        easeFactor: 2.5,
        createdAt: DateTime.now(),
      );
      _descriptionReviewBox.put(descriptionReview.id!, descriptionReview);
      descriptionReviews.add(descriptionReview);
    }

    return descriptionReviews;
  }

  Future<List<ConversationStarterReview>> _saveConversationStarterReviews(
      LessonReview lessonReview) async {
    final List<ConversationStarterReview> conversationStarterReviews = [];

    for (final conversationStarter
        in lessonReview.lesson.conversationStarters) {
      final conversationStarterReview = ConversationStarterReview(
        id: const Uuid().v4(),
        lessonReviewId: lessonReview.id!,
        conversationStarter: conversationStarter,
        languagePair: lessonReview.languagePair,
        nextReviewDate: DateTime.now().add(const Duration(days: 1)),
        repetitionCount: 0,
        easeFactor: 2.5,
        createdAt: DateTime.now(),
      );
      _conversationStarterReviewBox.put(
          conversationStarterReview.id!, conversationStarterReview);
      conversationStarterReviews.add(conversationStarterReview);
    }

    return conversationStarterReviews;
  }

  Future<List<InsightReview>> _saveInsightReviews(
      LessonReview lessonReview) async {
    final List<InsightReview> insightReviews = [];

    for (final insight in [
      ...lessonReview.lesson.grammarInsights,
      ...lessonReview.lesson.cultureInsights
    ]) {
      final insightReview = InsightReview(
        id: const Uuid().v4(),
        lessonReviewId: lessonReview.id!,
        insight: insight,
        languagePair: lessonReview.languagePair,
        nextReviewDate: DateTime.now().add(const Duration(days: 1)),
        repetitionCount: 0,
        easeFactor: 2.5,
        createdAt: DateTime.now(),
      );
      _insightReviewBox.put(insightReview.id!, insightReview);
      insightReviews.add(insightReview);
    }

    return insightReviews;
  }

  @override
  Future<List<LessonReview>> getAllLessons() async {
    final lessons = _lessonReviewBox.getAll(_lessonReviewBox.keys);
    return lessons.whereType<LessonReview>().toList();
  }

  @override
  Future<void> updateLessonReview(LessonReview lessonReview) async {
    _lessonReviewBox.put(lessonReview.id!, lessonReview);
  }

  @override
  Future<void> deleteLessonReview(String id) async {
    _lessonReviewBox.delete(id);
    _deleteRelatedReviews(id);
  }

  @override
  Future<List<VocabularyReview>> getAllVocabulary() async =>
      _vocabularyReviewBox
          .getAll(_vocabularyReviewBox.keys)
          .whereType<VocabularyReview>()
          .toList();

  @override
  Future<void> updateVocabularyReview(VocabularyReview review) async {
    _vocabularyReviewBox.put(review.id!, review);
  }

  @override
  Future<void> deleteVocabularyReview(String id) async {
    _vocabularyReviewBox.delete(id);
  }

  @override
  Future<List<DescriptionReview>> getAllDescription() async {
    return _descriptionReviewBox
        .getAll(_descriptionReviewBox.keys)
        .whereType<DescriptionReview>()
        .toList();
  }

  @override
  Future<void> updateDescriptionReview(DescriptionReview review) async {
    _descriptionReviewBox.put(review.id!, review);
  }

  @override
  Future<void> deleteDescriptionReview(String id) async {
    _descriptionReviewBox.delete(id);
  }

  @override
  Future<List<ConversationStarterReview>> getAllConversationStarters() async {
    return _conversationStarterReviewBox
        .getAll(_conversationStarterReviewBox.keys)
        .whereType<ConversationStarterReview>()
        .toList();
  }

  @override
  Future<void> updateConversationStarterReview(
      ConversationStarterReview review) async {
    _conversationStarterReviewBox.put(review.id!, review);
  }

  @override
  Future<void> deleteConversationStarterReview(String id) async {
    _conversationStarterReviewBox.delete(id);
  }

  @override
  Future<List<InsightReview>> getAllInsights() async {
    return _insightReviewBox
        .getAll(_insightReviewBox.keys)
        .whereType<InsightReview>()
        .toList();
  }

  @override
  Future<void> updateInsightReview(InsightReview review) async {
    _insightReviewBox.put(review.id!, review);
  }

  @override
  Future<void> deleteInsightReview(String id) async {
    _insightReviewBox.delete(id);
  }

  void _deleteRelatedReviews(String lessonReviewId) {
    final vocabularyReviewsToDelete = _vocabularyReviewBox.keys
        .where((key) =>
            _vocabularyReviewBox.get(key)?.lessonReviewId == lessonReviewId)
        .toList();
    _vocabularyReviewBox.deleteAll(vocabularyReviewsToDelete);

    final descriptionReviewsToDelete = _descriptionReviewBox.keys
        .where((key) =>
            _descriptionReviewBox.get(key)?.lessonReviewId == lessonReviewId)
        .toList();
    _descriptionReviewBox.deleteAll(descriptionReviewsToDelete);

    final conversationStarterReviewsToDelete = _conversationStarterReviewBox
        .keys
        .where((key) =>
            _conversationStarterReviewBox.get(key)?.lessonReviewId ==
            lessonReviewId)
        .toList();
    _conversationStarterReviewBox.deleteAll(conversationStarterReviewsToDelete);

    final insightReviewsToDelete = _insightReviewBox.keys
        .where((key) =>
            _insightReviewBox.get(key)?.lessonReviewId == lessonReviewId)
        .toList();
    _insightReviewBox.deleteAll(insightReviewsToDelete);
  }
}
