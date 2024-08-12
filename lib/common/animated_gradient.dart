import 'dart:math' as math;

import 'package:flutter/material.dart';

class AnimatedGradient extends StatefulWidget {
  final Curve curve;
  final Duration duration;

  const AnimatedGradient({
    super.key,
    this.curve = Curves.linear,
    this.duration = const Duration(seconds: 10),
  });

  @override
  State<AnimatedGradient> createState() => _AnimatedGradientState();
}

class _AnimatedGradientState extends State<AnimatedGradient>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late List<Color> _colors;
  late List<Animation<Offset>> _animations;
  final int _numPoints = 12;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: widget.duration,
      vsync: this,
    );

    _colors = [
      const Color(0xFFD96570),
      const Color(0xFF9B72CB),
      const Color(0xFF4285F4),
    ];

    _animations = List.generate(_numPoints, (index) {
      return Tween<Offset>(
        begin: _randomPosition(),
        end: _randomPosition(),
      ).animate(CurvedAnimation(
        parent: _controller,
        curve: widget.curve,
      ));
    });

    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _updatePositions();
      }
    });

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _updatePositions() {
    setState(() {
      _animations = List.generate(_numPoints, (index) {
        return Tween<Offset>(
          begin: _animations[index].value,
          end: _randomPosition(),
        ).animate(CurvedAnimation(
          parent: _controller,
          curve: widget.curve,
        ));
      });
    });
    _controller.forward(from: 0);
  }

  Offset _randomPosition() {
    return Offset(
      math.Random().nextDouble() * 2.2 - 1.25,
      math.Random().nextDouble() * 2.2 - 1.25,
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return CustomPaint(
          painter: BreathingGradientPainter(
            colors: _colors,
            animations: _animations,
            progress: _controller.value,
          ),
          child: Container(),
        );
      },
    );
  }
}

class BreathingGradientPainter extends CustomPainter {
  final List<Color> colors;
  final List<Animation<Offset>> animations;
  final double progress;

  BreathingGradientPainter({
    required this.colors,
    required this.animations,
    required this.progress,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();

    for (int i = 0; i < animations.length; i++) {
      final color = colors[i % colors.length];
      final currentPosition = animations[i].value;
      final radius = size.width *
          0.5445 *
          (math.sin(progress * 2 * math.pi + i) * 0.2 + 0.8);

      final gradient = RadialGradient(
        colors: [color.withOpacity(0.9), color.withOpacity(0)],
        stops: const [0, 1],
      );

      paint.shader = gradient.createShader(
        Rect.fromCircle(
          center: Offset(
            (currentPosition.dx * 0.5445 + 0.5) * size.width,
            (currentPosition.dy * 0.5445 + 0.5) * size.height,
          ),
          radius: radius,
        ),
      );

      canvas.drawCircle(
        Offset(
          (currentPosition.dx * 0.5445 + 0.5) * size.width,
          (currentPosition.dy * 0.5445 + 0.5) * size.height,
        ),
        radius,
        paint,
      );
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
