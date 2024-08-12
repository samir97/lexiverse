import 'package:flutter/material.dart';

class CameraControlsWidget extends StatelessWidget {
  const CameraControlsWidget({
    super.key,
    required this.onCapturePressed,
    required this.onGalleryPressed,
    required this.onTorchPressed,
    required this.isTorchOn,
  });

  final VoidCallback onCapturePressed;
  final VoidCallback onGalleryPressed;
  final VoidCallback onTorchPressed;
  final bool isTorchOn;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 24.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CameraControlButton(
              onPressed: onGalleryPressed,
              icon: Icons.photo_library_outlined,
              size: Theme.of(context).textTheme.headlineLarge?.fontSize,
            ),
            const SizedBox(width: 48),
            CameraControlButton(
              onPressed: onCapturePressed,
              icon: Icons.camera,
              size: Theme.of(context).textTheme.displayLarge?.fontSize,
            ),
            const SizedBox(width: 48),
            CameraControlButton(
              onPressed: onTorchPressed,
              icon: isTorchOn
                  ? Icons.flashlight_on
                  : Icons.flashlight_off_outlined,
              size: Theme.of(context).textTheme.headlineLarge?.fontSize,
            ),
          ],
        ),
      ),
    );
  }
}

class CameraControlButton extends StatelessWidget {
  const CameraControlButton({
    super.key,
    required this.onPressed,
    required this.icon,
    this.size,
  });

  final VoidCallback onPressed;
  final IconData icon;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      iconSize: size,
      onPressed: onPressed,
      icon: Icon(icon),
    );
  }
}
