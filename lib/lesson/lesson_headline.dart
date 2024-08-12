import 'package:flutter/material.dart';

class LessonHeadline extends StatelessWidget {
  final String headline;

  const LessonHeadline({super.key, required this.headline});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        headline,
        style: Theme.of(context).textTheme.headlineSmall?.copyWith(
              fontWeight: FontWeight.bold,
            ),
      ),
    );
  }
}
