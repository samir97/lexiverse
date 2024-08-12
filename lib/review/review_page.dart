import 'package:flutter/material.dart';
import 'package:lexiverse/review/insights_tab.dart';
import 'package:lexiverse/review/phrases_tab.dart';
import 'package:lexiverse/review/vocab_tab.dart';

class ReviewPage extends StatelessWidget {
  const ReviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text('Review'),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Phrases'),
              Tab(text: 'Vocabulary'),
              Tab(text: 'Insights'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            PhrasesTab(),
            VocabTab(),
            InsightsTab(),
          ],
        ),
      ),
    );
  }
}
