import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lexiverse/data/model/proficiency_level.dart';
import 'package:lexiverse/notifiers/preferences_notifier.dart';
import 'package:lexiverse/settings/learning_reason_selector_screen.dart';

class FluencyLevelSelectorScreen extends ConsumerStatefulWidget {
  final ProficiencyLevel? proficiencyLevel;

  const FluencyLevelSelectorScreen({super.key, this.proficiencyLevel});

  @override
  ConsumerState<FluencyLevelSelectorScreen> createState() =>
      _FluencyLevelSelectorScreenState();
}

class _FluencyLevelSelectorScreenState
    extends ConsumerState<FluencyLevelSelectorScreen> {
  ProficiencyLevel? _selectedLevel;

  @override
  void initState() {
    super.initState();
    _selectedLevel = widget.proficiencyLevel;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false,
        child: CustomScrollView(
          slivers: [
            SliverAppBar.large(
              title: const Text('My fluency level is ...'),
              actions: [
                if (widget.proficiencyLevel != null &&
                    _selectedLevel != widget.proficiencyLevel)
                  CupertinoButton(
                    child: const Text(
                      'Save',
                    ),
                    onPressed: () {
                      ref
                          .read(preferencesNotifierProvider.notifier)
                          .setProficiencyLevel(_selectedLevel!);
                      Navigator.pop(context);
                    },
                  )
              ],
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) =>
                    _buildProficiencyTile(ProficiencyLevel.values[index]),
                childCount: ProficiencyLevel.values.length,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: (widget.proficiencyLevel == null)
          ? SafeArea(
              child: Container(
                color: Theme.of(context).scaffoldBackgroundColor,
                padding: const EdgeInsets.all(16.0),
                child: FilledButton.tonal(
                  onPressed: _selectedLevel != null
                      ? () {
                          ref
                              .read(preferencesNotifierProvider.notifier)
                              .setProficiencyLevel(_selectedLevel!);
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const LearningReasonSelectorScreen(),
                            ),
                          );
                        }
                      : null,
                  child: const Text('Continue'),
                ),
              ),
            )
          : null,
    );
  }

  Widget _buildProficiencyTile(ProficiencyLevel level) {
    return ListTile(
      leading: Text(
        level.emoji,
        style: Theme.of(context).textTheme.titleLarge,
      ),
      title: Text(level.description),
      subtitle:
          Text('${level.name.toUpperCase()} - ${_getLevelDescription(level)}'),
      trailing: _selectedLevel == level
          ? Icon(Icons.check,
              color: Theme.of(context).textTheme.bodyMedium?.color)
          : null,
      onTap: () {
        setState(() {
          _selectedLevel = level;
        });
      },
    );
  }

  String _getLevelDescription(ProficiencyLevel level) {
    switch (level) {
      case ProficiencyLevel.a1:
        return 'Can understand and use familiar everyday expressions and very basic phrases.';
      case ProficiencyLevel.a2:
        return 'Can communicate in simple and routine tasks requiring a simple and direct exchange of information.';
      case ProficiencyLevel.b1:
        return 'Can deal with most situations likely to arise while travelling in an area where the language is spoken.';
      case ProficiencyLevel.b2:
        return 'Can interact with a degree of fluency and spontaneity that makes regular interaction with native speakers quite possible.';
      case ProficiencyLevel.c1:
        return 'Can express ideas fluently and spontaneously without much obvious searching for expressions.';
      case ProficiencyLevel.c2:
        return 'Can understand with ease virtually everything heard or read.';
    }
  }
}
