import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lexiverse/data/model/language.dart';
import 'package:lexiverse/data/model/learning_reason.dart';
import 'package:lexiverse/data/model/proficiency_level.dart';
import 'package:lexiverse/notifiers/preferences_notifier.dart';
import 'package:lexiverse/settings/fluency_level_selector_screen.dart';
import 'package:lexiverse/settings/learning_language_selector_screen.dart';
import 'package:lexiverse/settings/learning_reason_selector_screen.dart';
import 'package:lexiverse/settings/native_language_selector_screen.dart';

class SettingsPage extends ConsumerWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final preferences = ref.watch(preferencesNotifierProvider);

    final learningLanguage = preferences.learningLanguage;
    final nativeLanguage = preferences.nativeLanguage;
    final proficiencyLevel = preferences.proficiencyLevel;
    final learningReason = preferences.learningReason;

    if (learningLanguage == null ||
        nativeLanguage == null ||
        proficiencyLevel == null ||
        learningReason == null) {
      return const NativeLanguageSelectorScreen();
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: ListView(
        children: [
          const SizedBox(height: 16),
          _buildSettingsTile(
            context: context,
            title: 'Native Language',
            emoji: nativeLanguage.flagEmoji,
            onTap: () => _navigateTo(
              context,
              NativeLanguageSelectorScreen(nativeLanguage: nativeLanguage),
            ),
          ),
          _buildSettingsTile(
            context: context,
            title: 'Learning Language',
            emoji: learningLanguage.flagEmoji,
            onTap: () => _navigateTo(
              context,
              LearningLanguageSelectorScreen(
                nativeLanguage: nativeLanguage,
                learningLanguage: learningLanguage,
              ),
            ),
          ),
          _buildSettingsTile(
            context: context,
            title: 'Fluency Level',
            emoji: proficiencyLevel.emoji,
            onTap: () => _navigateTo(
              context,
              FluencyLevelSelectorScreen(proficiencyLevel: proficiencyLevel),
            ),
          ),
          _buildSettingsTile(
            context: context,
            title: 'Learning Reason',
            emoji: learningReason.emoji,
            onTap: () => _navigateTo(
                context,
                LearningReasonSelectorScreen(
                  learningReason: learningReason,
                )),
          ),
        ],
      ),
    );
  }

  Widget _buildSettingsTile({
    required BuildContext context,
    required String title,
    required String emoji,
    required VoidCallback onTap,
  }) {
    return Column(
      children: [
        ListTile(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title),
              const SizedBox(width: 8),
              Text(
                emoji,
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ],
          ),
          onTap: onTap,
        ),
        const Divider(),
      ],
    );
  }

  void _navigateTo(BuildContext context, Widget screen) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => screen));
  }
}
