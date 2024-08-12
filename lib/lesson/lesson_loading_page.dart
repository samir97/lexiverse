import 'package:flutter/material.dart';
import 'package:lexiverse/common/animated_gradient.dart';
import 'package:lexiverse/common/shimmer_text.dart';
import 'package:lexiverse/data/model/lesson.model.dart';
import 'package:lexiverse/data/model/mock_lesson.dart';
import 'package:lexiverse/lesson/lesson_background.dart';
import 'package:lexiverse/lesson/lesson_title.dart';
import 'package:lexiverse/lesson/lesson_vocabulary.dart';

class LoadingScreenPage extends StatelessWidget {
  final ScrollController scrollController;
  final ImageUrl imageUrl;

  const LoadingScreenPage({
    super.key,
    required this.scrollController,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: CustomScrollView(
        key: const ValueKey<String>('loading'),
        controller: scrollController,
        slivers: <Widget>[
          SliverAppBar.large(
            expandedHeight: MediaQuery.of(context).size.width,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                fit: StackFit.expand,
                children: [
                  LessonBackground(imageUrl: imageUrl.large),
                  const Opacity(
                    opacity: 0.5,
                    child: AnimatedGradient(
                      curve: Curves.fastOutSlowIn,
                      duration: Duration(seconds: 3),
                    ),
                  ),
                ],
              ),
            ),
            title: Text(_lessonTitle.baseText),
          ),
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const LessonTitle(title: _lessonTitle),
                ListTile(
                  title: Align(
                    alignment: Alignment.centerLeft,
                    child: ShimmerText(
                      text: 'Vocabulary',
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                LessonVocabulary(
                  vocabulary: mockLesson.vocabulary,
                  isLoading: true,
                ),
                ListTile(
                  title: Align(
                    alignment: Alignment.centerLeft,
                    child: ShimmerText(
                      text: 'Conversations',
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                ..._description.take(3).map(
                      (sentence) => ListTile(
                        title: Align(
                          alignment: Alignment.centerLeft,
                          child: ShimmerText(
                            text: sentence.targetText,
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: ShimmerText(
                              text: sentence.baseText,
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                          ),
                        ),
                      ),
                    ),
                ListTile(
                  title: Align(
                    alignment: Alignment.centerLeft,
                    child: ShimmerText(
                      text: 'Insights',
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                ..._description.skip(3).take(2).map(
                      (sentence) => ListTile(
                        title: Align(
                          alignment: Alignment.centerLeft,
                          child: ShimmerText(
                            text: sentence.targetText,
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: ShimmerText(
                              text: sentence.baseText,
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                          ),
                        ),
                      ),
                    ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

const _lessonTitle = TranslatedText(
  baseText: 'Generating Lesson...',
  targetText: 'It may take up to 3 minutes.',
);

const _description = [
  TranslatedText(
    baseText: "There are many people talking and having having fun.",
    targetText: "Ci sono molte persone che parlano e si divertono.",
  ),
  TranslatedText(
    baseText: "The decorations are simple, with orange flags hanging's heads.",
    targetText: "Le  sono, con appese appese sopra le teste delle .",
  ),
  TranslatedText(
    baseText: "The lights are warm and create a cozy atmosphere.",
    targetText: "Le luci sono calde e creano un'atmosfera .",
  ),
  TranslatedText(
    baseText: "In the background, there is a stage with a sign that.",
    targetText: "Sullo sfondo, c'è u che dice \"Live Music\".",
  ),
  TranslatedText(
    baseText: "People are wearing casual clothes and seem to be the moment.",
    targetText: "La gente indossa abiti casual e sembra godersi il .",
  ),
];
