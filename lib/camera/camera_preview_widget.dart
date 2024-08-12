import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:lexiverse/camera/camera_permission_request.dart';

class CameraPreviewWidget extends StatelessWidget {
  const CameraPreviewWidget({
    super.key,
    required this.controller,
    required this.hasCameraPermission,
  });

  final CameraController? controller;
  final bool hasCameraPermission;

  @override
  Widget build(BuildContext context) {
    if (!hasCameraPermission) {
      return const CameraPermissionRequest();
    }

    if (controller?.value.isInitialized ?? false) {
      return LayoutBuilder(
        builder: (context, constraints) {
          return Transform.scale(
            scale: 1 /
                (controller!.value.aspectRatio *
                    MediaQuery.of(context).size.aspectRatio),
            alignment: Alignment.center,
            child: CameraPreview(controller!),
          );
        },
      );
    } else {
      return const CameraPermissionRequest();
    }
  }
}
