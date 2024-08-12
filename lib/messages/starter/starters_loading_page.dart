import 'package:flutter/material.dart';
import 'package:lexiverse/data/model/mock_lesson.dart';
import 'package:lexiverse/messages/starter/conversation_starter_panel.dart';
import 'package:skeletonizer/skeletonizer.dart';

class StartersLoadingPage extends StatelessWidget {
  final ScrollController scrollController;
  const StartersLoadingPage({super.key, required this.scrollController});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false,
        child: CustomScrollView(
          controller: scrollController,
          slivers: [
            const SliverAppBar.large(
              title: Text('Generating Conversation Starters...'),
            ),
            SliverToBoxAdapter(
              child: Skeletonizer(
                enabled: true,
                child: Column(
                  children: mockConversationStarters
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
              ),
            )
          ],
        ),
      ),
    );
  }
}
