import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lexiverse/messages/starter/starters_loading_page.dart';
import 'package:lexiverse/messages/starter/starters_screen.dart';
import 'package:lexiverse/notifiers/lessons_notifiers.dart';

class StartersLoadingScreen extends ConsumerStatefulWidget {
  final List<String> words;

  const StartersLoadingScreen({super.key, required this.words});

  @override
  ConsumerState<StartersLoadingScreen> createState() =>
      _StartersLoadingScreenState();
}

class _StartersLoadingScreenState extends ConsumerState<StartersLoadingScreen> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref
          .read(conversationStarterGeneratorProvider.notifier)
          .generateConversationStarters(widget.words);
    });
  }

  @override
  Widget build(BuildContext context) {
    final starterState = ref.watch(conversationStarterGeneratorProvider);

    return Scaffold(
      body: AnimatedSwitcher(
        duration: const Duration(milliseconds: 500),
        child: starterState.when(
          data: (starters) {
            return StartersScreen(
              key: const ValueKey<String>('starters'),
              conversationStarterReviews: starters,
            );
          },
          loading: () => StartersLoadingPage(
            scrollController: _scrollController,
          ),
          error: (error, stackTrace) {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: const Text('Error'),
                  content: const Text(
                      'Failed to generate conversation starters. Please try again later.'),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                        Navigator.of(context).pop();
                      },
                      child: const Text('OK'),
                    ),
                  ],
                ),
              );
            });
            return const Center(child: Text('Error loading starters'));
          },
        ),
      ),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}
