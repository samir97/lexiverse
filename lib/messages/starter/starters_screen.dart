import 'package:flutter/material.dart';
import 'package:lexiverse/data/model/lesson.model.dart';
import 'package:lexiverse/messages/starter/conversation_starter_panel.dart';

class StartersScreen extends StatelessWidget {
  final List<ConversationStarterReview> conversationStarterReviews;

  const StartersScreen({super.key, required this.conversationStarterReviews});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false,
        child: CustomScrollView(
          slivers: [
            const SliverAppBar.large(
              title: Text('Conversation Starters'),
            ),
            SliverToBoxAdapter(
              child: Column(
                children: conversationStarterReviews
                    .map(
                      (starter) => ConversationStarterPanel(
                        languagePair: starter.languagePair,
                        lessonReviewId: starter.lessonReviewId,
                        conversationStarter: starter.conversationStarter,
                        initiallyExpanded: true,
                      ),
                    )
                    .toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
