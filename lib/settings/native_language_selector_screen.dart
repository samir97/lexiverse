import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lexiverse/data/model/language.dart';
import 'package:lexiverse/notifiers/preferences_notifier.dart';
import 'package:lexiverse/settings/learning_language_selector_screen.dart';

class NativeLanguageSelectorScreen extends ConsumerStatefulWidget {
  final Language? nativeLanguage;

  const NativeLanguageSelectorScreen({super.key, this.nativeLanguage});

  @override
  ConsumerState<NativeLanguageSelectorScreen> createState() =>
      _NativeLanguageSelectorScreenState();
}

class _NativeLanguageSelectorScreenState
    extends ConsumerState<NativeLanguageSelectorScreen> {
  Language? _selectedLanguage;

  final List<Language> _popularLanguages =
      Language.values.where((lang) => lang.isPopularLanguage).toList();

  late final List<Language> _allLanguages;

  @override
  void initState() {
    super.initState();
    _selectedLanguage = widget.nativeLanguage;
    _allLanguages = Language.values
        .where((lang) => !_popularLanguages.contains(lang))
        .toList()
      ..sort((a, b) => a.displayName.compareTo(b.displayName));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false,
        child: CustomScrollView(
          slivers: [
            SliverAppBar.large(
              title: const Text('I am fluent in ...'),
              actions: [
                if (widget.nativeLanguage != null &&
                    _selectedLanguage != widget.nativeLanguage)
                  CupertinoButton(
                    child: const Text('Save'),
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: const Text('Change Language?'),
                            content: const Text(
                                'This will archive your current progress and hide it. You can access it again by changing back.'),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  setState(() => _selectedLanguage =
                                      widget.nativeLanguage);
                                  Navigator.pop(context);
                                },
                                child: const Text('Cancel'),
                              ),
                              TextButton(
                                onPressed: () {
                                  ref
                                      .read(
                                          preferencesNotifierProvider.notifier)
                                      .setNativeLanguage(_selectedLanguage!);
                                  Navigator.pop(context);
                                  Navigator.pop(context);
                                },
                                child: const Text('Change'),
                              ),
                            ],
                          );
                        },
                      );
                    },
                  )
              ],
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Popular Languages',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) =>
                    _buildLanguageTile(_popularLanguages[index]),
                childCount: _popularLanguages.length,
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'All Languages',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) => _buildLanguageTile(_allLanguages[index]),
                childCount: _allLanguages.length,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: (widget.nativeLanguage == null)
          ? SafeArea(
              child: Container(
                color: Theme.of(context).scaffoldBackgroundColor,
                padding: const EdgeInsets.all(16.0),
                child: FilledButton.tonal(
                  onPressed: _selectedLanguage != null
                      ? () {
                          ref
                              .read(preferencesNotifierProvider.notifier)
                              .setNativeLanguage(_selectedLanguage!);
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  LearningLanguageSelectorScreen(
                                nativeLanguage: _selectedLanguage!,
                              ),
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

  Widget _buildLanguageTile(Language language) {
    return ListTile(
      leading: Text(
        language.flagEmoji,
        style: Theme.of(context).textTheme.titleLarge,
      ),
      title: Text(language.displayName),
      trailing: _selectedLanguage == language
          ? Icon(Icons.check,
              color: Theme.of(context).textTheme.bodyMedium?.color)
          : null,
      onTap: () {
        setState(() {
          _selectedLanguage = language;
        });
      },
    );
  }
}
