import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lexiverse/messages/starter/conversation_starter_panel.dart';
import 'package:lexiverse/notifiers/lessons_notifiers.dart';

class StartersTab extends ConsumerStatefulWidget {
  const StartersTab({super.key});

  @override
  ConsumerState<StartersTab> createState() => _StartersTabState();
}

class _StartersTabState extends ConsumerState<StartersTab> {
  @override
  void initState() {
    super.initState();
    // Refresh conversation starters when the tab is first created
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref
          .read(conversationStarterNotifierProvider.notifier)
          .refreshConversationStarters();
    });
  }

  @override
  Widget build(BuildContext context) {
    final startersAsyncValue = ref.watch(conversationStarterNotifierProvider);

    return startersAsyncValue.when(
      data: (starters) {
        if (starters.isEmpty) {
          return const Center(child: Text('No conversation starters yet'));
        }
        return ListView.builder(
          padding: const EdgeInsets.only(top: 16),
          itemCount: starters.length,
          itemBuilder: (context, index) {
            final starter = starters[index];
            return ConversationStarterPanel(
              languagePair: starter.languagePair,
              lessonReviewId: starter.lessonReviewId,
              conversationStarter: starter.conversationStarter,
              initiallyExpanded: false,
            );
          },
        );
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stack) => Center(child: Text('Error: $error')),
    );
  }
}
