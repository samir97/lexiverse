import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lexiverse/data/model/lesson.model.dart';
import 'package:lexiverse/data/model/mock_lesson.dart';
import 'package:lexiverse/lesson/lesson_loading_page.dart';
import 'package:lexiverse/lesson/lesson_screen.dart';
import 'package:lexiverse/notifiers/lessons_notifiers.dart';

class LessonLoadingScreen extends ConsumerStatefulWidget {
  final ImageUrl imageUrl;

  const LessonLoadingScreen({super.key, required this.imageUrl});

  @override
  ConsumerState<LessonLoadingScreen> createState() =>
      _LessonLoadingScreenState();
}

class _LessonLoadingScreenState extends ConsumerState<LessonLoadingScreen> {
  final ScrollController _scrollController = ScrollController();
  bool _isLoading = true;
  LessonReview? _lessonReview;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref
          .read(lessonGeneratorProvider.notifier)
          .generateLesson(widget.imageUrl);
    });
  }

  @override
  Widget build(BuildContext context) {
    ref.listen<AsyncValue<LessonReview?>>(
      lessonGeneratorProvider,
      (_, state) {
        state.whenOrNull(
          data: (lessonReview) {
            if (lessonReview != null) {
              setState(() {
                _lessonReview = lessonReview;
              });
              _scrollController
                  .animateTo(
                    0,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeOut,
                  )
                  .then((_) => setState(() => _isLoading = false));
            }
          },
          error: (error, stackTrace) {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: const Text('Error'),
                  content: const Text(
                      'Failed to generate lesson. Please try again later.'),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                        Navigator.of(context).pop();
                      },
                      child: const Text('OK'),
                    ),
                  ],
                ),
              );
            });
          },
        );
      },
    );

    return Scaffold(
      body: AnimatedSwitcher(
        duration: const Duration(milliseconds: 500),
        child: _isLoading
            ? LoadingScreenPage(
                scrollController: _scrollController,
                imageUrl: widget.imageUrl,
              )
            : LessonScreen(
                key: const ValueKey<String>('lesson'),
                lessonReview: _lessonReview ?? mockLessons.first,
              ),
      ),
    );
  }
}
