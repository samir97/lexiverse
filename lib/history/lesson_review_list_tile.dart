import 'package:flutter/material.dart';
import 'package:lexiverse/common/async_image_loader.dart';
import 'package:lexiverse/data/model/lesson.model.dart';
import 'package:lexiverse/lesson/lesson_screen.dart';
import 'package:uuid/uuid.dart';

class LessonReviewListTile extends StatelessWidget {
  final LessonReview lessonReview;

  const LessonReviewListTile({
    super.key,
    required this.lessonReview,
  });

  @override
  Widget build(BuildContext context) {
    final heroTag = const Uuid().v4().toString();
    return ListTile(
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Hero(
          tag: heroTag,
          child: AsyncImageLoader(
            imageUrl: lessonReview.imageUrl.medium,
            width: 56,
            height: 56,
            iconFraction: 0.5,
          ),
        ),
      ),
      title: Text(lessonReview.lesson.title.targetText),
      subtitle: Text(lessonReview.lesson.title.baseText),
      onTap: () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) =>
              LessonScreen(heroTag: heroTag, lessonReview: lessonReview),
        ),
      ),
    );
  }
}
