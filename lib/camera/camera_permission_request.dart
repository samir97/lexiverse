import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class CameraPermissionRequest extends StatelessWidget {
  const CameraPermissionRequest({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.photo_camera_outlined, size: 64, color: Colors.grey),
        Padding(
          padding: EdgeInsets.all(24.0),
          child: Text(
              'Unable to load camera preview, please check your permissions.',
              textAlign: TextAlign.center),
        ),
        ElevatedButton(
          onPressed: openAppSettings,
          child: Text('Open Settings'),
        ),
      ],
    );
  }
}
