import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lexiverse/common/vocabulary_chip.dart';
import 'package:lexiverse/data/model/lesson.model.dart';
import 'package:lexiverse/messages/starter/starters_loading_screen.dart';
import 'package:lexiverse/notifiers/lessons_notifiers.dart';
import 'package:lexiverse/review/vocabulary_matching_game.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'vocab_tab.g.dart';

@riverpod
class SelectedVocab extends _$SelectedVocab {
  @override
  Set<VocabularyReview> build() {
    return {};
  }

  void toggle(VocabularyReview vocabularyReview) {
    if (state.contains(vocabularyReview)) {
      state = state.where((v) => v != vocabularyReview).toSet();
    } else if (state.length < 5) {
      state = {...state, vocabularyReview};
    }
  }

  void clear() {
    state = {};
  }
}

class VocabTab extends ConsumerWidget {
  const VocabTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final vocabularyAsyncValue = ref.watch(vocabularyNotifierProvider);
    final selectedVocab = ref.watch(selectedVocabProvider);
    List<VocabularyReview> vocabList = [];

    const int chunkSize = 12;

    return Scaffold(
      body: vocabularyAsyncValue.when(
        data: (vocabulary) {
          if (vocabulary.isEmpty) {
            return const Center(child: Text('No vocabulary items yet'));
          }

          vocabList = vocabulary;

          return ListView.builder(
            padding: const EdgeInsets.all(16),
            itemCount: (vocabulary.length / chunkSize).ceil(),
            itemBuilder: (context, index) {
              final startIndex = index * chunkSize;
              final endIndex = (startIndex + chunkSize < vocabulary.length)
                  ? startIndex + chunkSize
                  : vocabulary.length;
              final chunkVocab = vocabulary.sublist(startIndex, endIndex);

              return Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  if (index == 0)
                    const Padding(
                      padding: EdgeInsets.only(bottom: 8.0),
                      child: Text(
                        'Select up to 5 words to generate conversations',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  VocabularyChunk(
                    vocabularyReviews: chunkVocab,
                  ),
                  if ((index == (vocabulary.length / chunkSize).ceil() - 1) &&
                      selectedVocab.isNotEmpty)
                    const SizedBox(height: 80),
                ],
              );
            },
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) => Center(child: Text('Error: $error')),
      ),
      floatingActionButton: selectedVocab.isNotEmpty
          ? FloatingActionButton.extended(
              onPressed: () {
                final selectedWords =
                    selectedVocab.map((v) => v.word.targetText).toList();

                ref.read(selectedVocabProvider.notifier).clear();

                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => StartersLoadingScreen(
                      words: selectedWords,
                    ),
                  ),
                );
              },
              label: const Text('Generate'),
              icon: const Icon(Icons.chat),
            )
          : null,
      bottomNavigationBar: (vocabList.isNotEmpty)
          ? SafeArea(
              top: false,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: FilledButton.tonal(
                  child: const Text(
                    'Play Match Words',
                    textAlign: TextAlign.center,
                  ),
                  onPressed: () {
                    final random = Random();
                    final randomWords = List.generate(
                      5,
                      (_) => vocabList[random.nextInt(vocabList.length)].word,
                    );
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => VocabularyMatchingGame(
                          words: randomWords,
                        ),
                      ),
                    );
                  },
                ),
              ),
            )
          : null,
    );
  }
}

class VocabularyChunk extends ConsumerWidget {
  final List<VocabularyReview> vocabularyReviews;

  const VocabularyChunk({
    super.key,
    required this.vocabularyReviews,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedVocab = ref.watch(selectedVocabProvider);

    return Wrap(
      spacing: 8.0,
      runSpacing: 8.0,
      children: vocabularyReviews.map((review) {
        return ChoiceChip(
          label: VocabularyChip(vocabulary: review.word),
          selected: selectedVocab.contains(review),
          onSelected: (bool selected) {
            ref.read(selectedVocabProvider.notifier).toggle(review);
          },
        );
      }).toList(),
    );
  }
}
