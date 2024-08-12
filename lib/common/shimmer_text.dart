import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerText extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final double borderRadius;

  const ShimmerText({
    super.key,
    required this.text,
    required this.style,
    this.borderRadius = 8.0,
  });

  @override
  Widget build(BuildContext context) {
    final TextPainter textPainter = TextPainter(
      text: TextSpan(text: text, style: style),
      maxLines: 1,
      textDirection: TextDirection.ltr,
    )..layout(minWidth: 0, maxWidth: double.infinity);

    final textWidth = textPainter.width;
    final textHeight = textPainter.height;

    return Shimmer.fromColors(
      baseColor: const Color(0xFF3A3A3A),
      highlightColor: const Color(0xFF424242),
      child: Container(
        width: textWidth,
        height: textHeight,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
      ),
    );
  }
}
