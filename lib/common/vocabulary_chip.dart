import 'package:flutter/material.dart';
import 'package:lexiverse/data/model/lesson.model.dart';
import 'package:skeletonizer/skeletonizer.dart';

class VocabularyChip extends StatelessWidget {
  final TranslatedText vocabulary;

  const VocabularyChip({super.key, required this.vocabulary});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Column(
          children: [
            Text(
              vocabulary.baseText,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
        const Skeleton.keep(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 4.0),
            child: Icon(
              Icons.arrow_forward,
              size: 16,
            ),
          ),
        ),
        Flexible(
          child: Text(
            vocabulary.targetText,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
