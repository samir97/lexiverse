import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lexiverse/history/lesson_review_list_tile.dart';
import 'package:lexiverse/notifiers/lessons_notifiers.dart';

class FavouritesTab extends ConsumerWidget {
  const FavouritesTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final lessonsAsyncValue = ref.watch(lessonsNotifierProvider);

    return lessonsAsyncValue.when(
      data: (lessons) {
        final favourites =
            lessons.where((lesson) => lesson.isFavorite).toList();
        if (favourites.isEmpty) {
          return const Center(child: Text('No favorites yet'));
        }
        return ListView.builder(
          itemCount: favourites.length,
          itemBuilder: (context, index) {
            final lessonReview = favourites[index];
            return Column(
              children: [
                if (index == 0) const SizedBox(height: 16),
                LessonReviewListTile(
                  lessonReview: lessonReview,
                ),
                const Divider(),
              ],
            );
          },
        );
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stack) => Center(child: Text('Error: $error')),
    );
  }
}
