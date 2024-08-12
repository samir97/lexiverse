import 'dart:io';
import 'dart:typed_data';

import 'package:lexiverse/data/model/lesson.model.dart';
import 'package:lexiverse/data/repository/hive_lesson_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'lessons_notifiers.g.dart';

@riverpod
class LessonGenerator extends _$LessonGenerator {
  @override
  FutureOr<LessonReview?> build() => null;

  Future<void> generateLesson(ImageUrl imageUrl) async {
    state = const AsyncValue.loading();
    try {
      final File imageFile = File(imageUrl.large);
      final Uint8List imageBytes = await imageFile.readAsBytes();

      final (
        lessonReview,
        vocabularyReviews,
        descriptionReviews,
        conversationStarterReviews,
        insightReviews
      ) = await ref
          .read(lessonRepositoryProvider)
          .generateLesson(imageBytes, imageUrl);

      state = AsyncValue.data(lessonReview);

      _updateNotifiers(lessonReview, vocabularyReviews, descriptionReviews,
          conversationStarterReviews, insightReviews);
    } catch (e, stackTrace) {
      state = AsyncValue.error(e, stackTrace);
    }
  }

  void _updateNotifiers(
    LessonReview lessonReview,
    List<VocabularyReview> vocabularyReviews,
    List<DescriptionReview> descriptionReviews,
    List<ConversationStarterReview> conversationStarterReviews,
    List<InsightReview> insightReviews,
  ) {
    ref.read(lessonsNotifierProvider.notifier).addLesson(lessonReview);

    for (var review in vocabularyReviews) {
      ref.read(vocabularyNotifierProvider.notifier).addVocabularyReview(review);
    }

    for (var review in descriptionReviews) {
      ref
          .read(descriptionNotifierProvider.notifier)
          .addDescriptionReview(review);
    }

    for (var review in conversationStarterReviews) {
      ref
          .read(conversationStarterNotifierProvider.notifier)
          .addConversationStarterReview(review);
    }

    for (var review in insightReviews) {
      ref.read(insightNotifierProvider.notifier).addInsightReview(review);
    }
  }
}

@riverpod
class ConversationStarterGenerator extends _$ConversationStarterGenerator {
  @override
  FutureOr<List<ConversationStarterReview>> build() => [];

  Future<void> generateConversationStarters(
      List<String> vocabularyWords) async {
    state = const AsyncValue.loading();

    try {
      final conversationStarterReviews = await ref
          .read(lessonRepositoryProvider)
          .generateConversationStarters(vocabularyWords);

      state = AsyncValue.data(conversationStarterReviews);

      ref
          .read(conversationStarterNotifierProvider.notifier)
          .addConversationStarterReviews(conversationStarterReviews);
    } catch (e, stackTrace) {
      state = AsyncValue.error(e, stackTrace);
    }
  }
}

@riverpod
class LessonsNotifier extends _$LessonsNotifier {
  @override
  FutureOr<List<LessonReview>> build() async {
    final lessons = await ref.read(lessonRepositoryProvider).getAllLessons();
    return _sortByCreatedAt(lessons);
  }

  List<LessonReview> _sortByCreatedAt(List<LessonReview> lessons) {
    return lessons..sort((a, b) => b.createdAt.compareTo(a.createdAt));
  }

  Future<void> refreshLessons() async {
    state = const AsyncValue.loading();
    try {
      final lessons = await ref.read(lessonRepositoryProvider).getAllLessons();
      state = AsyncValue.data(_sortByCreatedAt(lessons));
    } catch (e, stack) {
      state = AsyncValue.error(e, stack);
    }
  }

  Future<void> updateLessonReview(LessonReview lessonReview) async {
    await ref.read(lessonRepositoryProvider).updateLessonReview(lessonReview);
    refreshLessons();
  }

  Future<void> deleteLessonReview(String id) async {
    await ref.read(lessonRepositoryProvider).deleteLessonReview(id);
    refreshLessons();
  }

  Future<void> toggleFavorite(String id) async {
    final currentState = state.value;
    if (currentState != null) {
      final index = currentState.indexWhere((lesson) => lesson.id == id);
      if (index != -1) {
        final updatedLesson = currentState[index].copyWith(
          isFavorite: !currentState[index].isFavorite,
        );
        await updateLessonReview(updatedLesson);
      }
    }
  }

  void addLesson(LessonReview lesson) {
    state.whenData((lessons) {
      final updatedLessons = _sortByCreatedAt([lesson, ...lessons]);
      state = AsyncValue.data(updatedLessons);
    });
  }
}

@riverpod
class VocabularyNotifier extends _$VocabularyNotifier {
  @override
  FutureOr<List<VocabularyReview>> build() async {
    final vocabulary =
        await ref.read(lessonRepositoryProvider).getAllVocabulary();
    return _sortByCreatedAt(vocabulary);
  }

  List<VocabularyReview> _sortByCreatedAt(List<VocabularyReview> vocabulary) {
    return vocabulary..sort((a, b) => b.createdAt.compareTo(a.createdAt));
  }

  Future<void> refreshVocabulary() async {
    state = const AsyncValue.loading();
    try {
      final vocabulary =
          await ref.read(lessonRepositoryProvider).getAllVocabulary();
      state = AsyncValue.data(_sortByCreatedAt(vocabulary));
    } catch (e, stack) {
      state = AsyncValue.error(e, stack);
    }
  }

  Future<void> updateVocabularyReview(VocabularyReview review) async {
    await ref.read(lessonRepositoryProvider).updateVocabularyReview(review);
    refreshVocabulary();
  }

  Future<void> deleteVocabularyReview(String id) async {
    await ref.read(lessonRepositoryProvider).deleteVocabularyReview(id);
    refreshVocabulary();
  }

  void addVocabularyReview(VocabularyReview review) {
    state.whenData((reviews) {
      final updatedReviews = _sortByCreatedAt([review, ...reviews]);
      state = AsyncValue.data(updatedReviews);
    });
  }
}

@riverpod
class DescriptionNotifier extends _$DescriptionNotifier {
  @override
  FutureOr<List<DescriptionReview>> build() async {
    final descriptions =
        await ref.read(lessonRepositoryProvider).getAllDescription();
    return _sortByCreatedAt(descriptions);
  }

  List<DescriptionReview> _sortByCreatedAt(
      List<DescriptionReview> descriptions) {
    return descriptions..sort((a, b) => b.createdAt.compareTo(a.createdAt));
  }

  Future<void> refreshDescriptions() async {
    state = const AsyncValue.loading();
    try {
      final descriptions =
          await ref.read(lessonRepositoryProvider).getAllDescription();
      state = AsyncValue.data(_sortByCreatedAt(descriptions));
    } catch (e, stack) {
      state = AsyncValue.error(e, stack);
    }
  }

  Future<void> updateDescriptionReview(DescriptionReview review) async {
    await ref.read(lessonRepositoryProvider).updateDescriptionReview(review);
    refreshDescriptions();
  }

  Future<void> deleteDescriptionReview(String id) async {
    await ref.read(lessonRepositoryProvider).deleteDescriptionReview(id);
    refreshDescriptions();
  }

  void addDescriptionReview(DescriptionReview review) {
    state.whenData((reviews) {
      final updatedReviews = _sortByCreatedAt([review, ...reviews]);
      state = AsyncValue.data(updatedReviews);
    });
  }
}

@riverpod
class ConversationStarterNotifier extends _$ConversationStarterNotifier {
  @override
  FutureOr<List<ConversationStarterReview>> build() async {
    final starters =
        await ref.read(lessonRepositoryProvider).getAllConversationStarters();
    return _sortByCreatedAt(starters);
  }

  List<ConversationStarterReview> _sortByCreatedAt(
      List<ConversationStarterReview> starters) {
    return starters..sort((a, b) => b.createdAt.compareTo(a.createdAt));
  }

  Future<void> refreshConversationStarters() async {
    state = const AsyncValue.loading();
    try {
      final starters =
          await ref.read(lessonRepositoryProvider).getAllConversationStarters();
      state = AsyncValue.data(_sortByCreatedAt(starters));
    } catch (e, stack) {
      state = AsyncValue.error(e, stack);
    }
  }

  Future<void> updateConversationStarterReview(
      ConversationStarterReview review) async {
    await ref
        .read(lessonRepositoryProvider)
        .updateConversationStarterReview(review);
    refreshConversationStarters();
  }

  Future<void> deleteConversationStarterReview(String id) async {
    await ref
        .read(lessonRepositoryProvider)
        .deleteConversationStarterReview(id);
    refreshConversationStarters();
  }

  void addConversationStarterReview(ConversationStarterReview review) {
    state.whenData((reviews) {
      final updatedReviews = _sortByCreatedAt([review, ...reviews]);
      state = AsyncValue.data(updatedReviews);
    });
  }

  void addConversationStarterReviews(List<ConversationStarterReview> reviews) {
    state.whenData((currentReviews) {
      final updatedReviews = _sortByCreatedAt([...currentReviews, ...reviews]);
      state = AsyncValue.data(updatedReviews);
    });
  }
}

@riverpod
class InsightNotifier extends _$InsightNotifier {
  @override
  FutureOr<List<InsightReview>> build() async {
    final insights = await ref.read(lessonRepositoryProvider).getAllInsights();
    return _sortByCreatedAt(insights);
  }

  List<InsightReview> _sortByCreatedAt(List<InsightReview> insights) {
    return insights..sort((a, b) => b.createdAt.compareTo(a.createdAt));
  }

  Future<void> refreshInsights() async {
    state = const AsyncValue.loading();
    try {
      final insights =
          await ref.read(lessonRepositoryProvider).getAllInsights();
      state = AsyncValue.data(_sortByCreatedAt(insights));
    } catch (e, stack) {
      state = AsyncValue.error(e, stack);
    }
  }

  Future<void> updateInsightReview(InsightReview review) async {
    await ref.read(lessonRepositoryProvider).updateInsightReview(review);
    refreshInsights();
  }

  Future<void> deleteInsightReview(String id) async {
    await ref.read(lessonRepositoryProvider).deleteInsightReview(id);
    refreshInsights();
  }

  void addInsightReview(InsightReview review) {
    state.whenData((reviews) {
      final updatedReviews = _sortByCreatedAt([review, ...reviews]);
      state = AsyncValue.data(updatedReviews);
    });
  }
}
