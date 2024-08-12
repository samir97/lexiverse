import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lexiverse/history/lesson_review_list_tile.dart';
import 'package:lexiverse/notifiers/lessons_notifiers.dart';

class LessonsTab extends ConsumerStatefulWidget {
  const LessonsTab({super.key});

  @override
  ConsumerState<LessonsTab> createState() => _LessonsTabState();
}

class _LessonsTabState extends ConsumerState<LessonsTab>
    with AutomaticKeepAliveClientMixin {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(lessonsNotifierProvider.notifier).refreshLessons();
    });
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    final lessonsAsyncValue = ref.watch(lessonsNotifierProvider);

    return lessonsAsyncValue.when(
      data: (lessons) {
        if (lessons.isEmpty) {
          return const Center(child: Text('No lessons yet'));
        }
        return ListView.builder(
          itemCount: lessons.length,
          itemBuilder: (context, index) {
            final lessonReview = lessons[index];
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
      error: (error, stack) =>
          const Center(child: Text('Error fetching lessons')),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
