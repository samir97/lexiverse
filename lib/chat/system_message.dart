import 'package:flutter/material.dart';

class SystemMessage extends StatelessWidget {
  final String title;
  final String suggestion;

  const SystemMessage({
    super.key,
    required this.title,
    required this.suggestion,
  });

  @override
  Widget build(BuildContext context) {
    final List<Color> colors = [
      const Color(0xFFD96570),
      const Color(0xFF9B72CB),
      const Color(0xFF4285F4),
    ];

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(2), // This creates the border thickness
        child: Card(
          margin: EdgeInsets.zero,
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Text(
                //   title,
                //   style: Theme.of(context)
                //       .textTheme
                //       .titleSmall
                //       ?.copyWith(fontWeight: FontWeight.bold),
                // ),
                // const SizedBox(height: 4),
                Text(suggestion),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
