import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lexiverse/data/model/learning_reason.dart';
import 'package:lexiverse/home/home_screen.dart';
import 'package:lexiverse/notifiers/preferences_notifier.dart';

class LearningReasonSelectorScreen extends ConsumerStatefulWidget {
  final LearningReason? learningReason;

  const LearningReasonSelectorScreen({super.key, this.learningReason});

  @override
  ConsumerState<LearningReasonSelectorScreen> createState() =>
      _FluencyLevelSelectorScreenState();
}

class _FluencyLevelSelectorScreenState
    extends ConsumerState<LearningReasonSelectorScreen> {
  late LearningReason _selectedReason;

  @override
  void initState() {
    super.initState();
    _selectedReason = widget.learningReason ?? LearningReason.general;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false,
        child: CustomScrollView(
          slivers: [
            SliverAppBar.large(
              title: const Text('My reason for learning is...'),
              actions: [
                if (_selectedReason != widget.learningReason &&
                    widget.learningReason != null)
                  CupertinoButton(
                    child: const Text('Save'),
                    onPressed: () {
                      ref
                          .read(preferencesNotifierProvider.notifier)
                          .setLearningReason(_selectedReason);
                      Navigator.pop(context);
                    },
                  )
              ],
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) =>
                    _buildReasonTile(LearningReason.values[index]),
                childCount: LearningReason.values.length,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: (widget.learningReason == null)
          ? SafeArea(
              child: Container(
                color: Theme.of(context).scaffoldBackgroundColor,
                padding: const EdgeInsets.all(16.0),
                child: FilledButton.tonal(
                  onPressed: () {
                    ref
                        .read(preferencesNotifierProvider.notifier)
                        .setLearningReason(_selectedReason);
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomeScreen(),
                        ),
                        (route) => false);
                  },
                  child: const Text('Continue'),
                ),
              ),
            )
          : null,
    );
  }

  Widget _buildReasonTile(LearningReason reason) {
    return ListTile(
      leading: Text(
        reason.emoji,
        style: Theme.of(context).textTheme.titleLarge,
      ),
      title: Text(reason.description),
      subtitle: Text(reason.motivation),
      trailing: _selectedReason == reason
          ? Icon(Icons.check,
              color: Theme.of(context).textTheme.bodyMedium?.color)
          : null,
      onTap: () {
        setState(() {
          _selectedReason = reason;
        });
      },
    );
  }
}
