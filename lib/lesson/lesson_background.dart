import 'package:flutter/material.dart';
import 'package:lexiverse/common/async_image_loader.dart';

class LessonBackground extends StatelessWidget {
  final String? heroTag;
  final String imageUrl;

  const LessonBackground({
    super.key,
    this.heroTag,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.width,
      child: Hero(
        tag: heroTag ?? UniqueKey(),
        child: Stack(
          fit: StackFit.expand,
          children: [
            AsyncImageLoader(
              imageUrl: imageUrl,
              fit: BoxFit.cover,
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: MediaQuery.of(context).size.width * 0.25,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.transparent,
                      Theme.of(context).scaffoldBackgroundColor,
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
