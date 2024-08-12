import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lexiverse/notifiers/lessons_notifiers.dart';

class PhrasesTab extends ConsumerStatefulWidget {
  const PhrasesTab({super.key});

  @override
  ConsumerState<PhrasesTab> createState() => _PhrasesTabState();
}

class _PhrasesTabState extends ConsumerState<PhrasesTab>
    with AutomaticKeepAliveClientMixin {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(descriptionNotifierProvider.notifier).refreshDescriptions();
    });
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    final descriptionsAsyncValue = ref.watch(descriptionNotifierProvider);

    return descriptionsAsyncValue.when(
      data: (descriptions) {
        if (descriptions.isEmpty) {
          return const Center(child: Text('No phrases yet'));
        }
        return ListView.builder(
          padding: const EdgeInsets.only(top: 16),
          itemCount: descriptions.length,
          itemBuilder: (context, index) {
            final descriptionReview = descriptions[index];
            return Column(
              children: [
                ListTile(
                  title: Text(descriptionReview.description.targetText),
                  subtitle: Text(descriptionReview.description.baseText),
                  // trailing: IconButton(
                  //   icon: const Icon(Icons.delete),
                  //   onPressed: () {
                  //     ref
                  //         .read(descriptionNotifierProvider.notifier)
                  //         .deleteDescriptionReview(descriptionReview.id!);
                  //   },
                  // ),
                ),
                const Divider(),
              ],
            );
          },
        );
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stack) => Center(child: Text('Error: $error')),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
