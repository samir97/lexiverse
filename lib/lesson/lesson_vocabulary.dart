import 'package:flutter/material.dart';
import 'package:lexiverse/common/vocabulary_chip.dart';
import 'package:lexiverse/data/model/lesson.model.dart';
import 'package:skeletonizer/skeletonizer.dart';

class LessonVocabulary extends StatelessWidget {
  final List<TranslatedText> vocabulary;
  final bool isLoading;

  const LessonVocabulary(
      {super.key, required this.vocabulary, this.isLoading = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Skeletonizer(
        enabled: isLoading,
        child: Wrap(
          spacing: 8,
          children: vocabulary
              .map(
                (vocabulary) => Chip(
                  label: VocabularyChip(vocabulary: vocabulary),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
