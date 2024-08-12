import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lexiverse/data/model/lesson.model.dart';
import 'package:lexiverse/notifiers/lessons_notifiers.dart';

class InsightsTab extends ConsumerStatefulWidget {
  const InsightsTab({super.key});

  @override
  ConsumerState<InsightsTab> createState() => _InsightsTabState();
}

class _InsightsTabState extends ConsumerState<InsightsTab> {
  @override
  void initState() {
    super.initState();
    // Refresh insights when the tab is first created
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(insightNotifierProvider.notifier).refreshInsights();
    });
  }

  @override
  Widget build(BuildContext context) {
    final insightsAsyncValue = ref.watch(insightNotifierProvider);

    return insightsAsyncValue.when(
      data: (insights) {
        if (insights.isEmpty) {
          return const Center(child: Text('No insights yet'));
        }
        return ListView.builder(
          padding: const EdgeInsets.only(top: 16),
          itemCount: insights.length,
          itemBuilder: (context, index) {
            final insightReview = insights[index];
            return Column(
              children: [
                ExpansionTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    child: insightReview.insight.type == InsightType.grammar
                        ? const Icon(Icons.library_books)
                        : const Icon(Icons.diversity_3_outlined),
                  ),
                  title: Text(insightReview.insight.title),
                  // trailing: IconButton(
                  //   icon: const Icon(Icons.delete),
                  //   onPressed: () {
                  //     ref
                  //         .read(insightNotifierProvider.notifier)
                  //         .deleteInsightReview(insightReview.id!);
                  //   },
                  // ),
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(insightReview.insight.explanation),
                    ),
                  ],
                ),
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
