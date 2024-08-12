import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lexiverse/camera/camera_controls_widget.dart';
import 'package:lexiverse/camera/camera_preview_widget.dart';
import 'package:lexiverse/data/model/lesson.model.dart';
import 'package:lexiverse/lesson/lesson_loading_screen.dart';
import 'package:lexiverse/utils/image_utils.dart';

class CameraPage extends ConsumerStatefulWidget {
  const CameraPage({super.key});

  @override
  ConsumerState<CameraPage> createState() => _CameraPageState();
}

class _CameraPageState extends ConsumerState<CameraPage> {
  late final ImagePicker _picker;
  CameraController? _controller;
  Future<void>? _initializeControllerFuture;
  bool _isTorchOn = false;
  bool _hasCameraPermission = true;
  bool _isInitializing = true;

  @override
  void initState() {
    super.initState();
    _picker = ImagePicker();
    _initializeCamera();
  }

  Future<void> _initializeCamera() async {
    setState(() {
      _isInitializing = true;
    });

    final cameras = await availableCameras();
    if (cameras.isEmpty) {
      setState(() {
        _hasCameraPermission = false;
        _isInitializing = false;
      });
      return;
    }

    final firstCamera = cameras.first;
    _controller = CameraController(
      firstCamera,
      ResolutionPreset.high,
    );

    try {
      await _controller!.initialize();
      if (mounted) {
        setState(() {
          _isInitializing = false;
        });
      }
    } catch (e) {
      setState(() {
        _hasCameraPermission = false;
        _isInitializing = false;
      });
    }
  }

  Future<void> _captureAndGenerateLesson() async {
    try {
      await _initializeControllerFuture;
      final image = await _controller!.takePicture();
      await _processImage(File(image.path));
    } catch (e) {
      _showErrorDialog(
          'There was an issue capturing the image. Please check your camera settings and try again.');
    }
  }

  Future<void> _pickImage(ImageSource source) async {
    try {
      final XFile? pickedFile = await _picker.pickImage(source: source);
      if (pickedFile != null) {
        await _processImage(File(pickedFile.path));
      }
    } catch (e) {
      _showErrorDialog(
          'The selected image is unavailable. Please choose a different image or try again later.');
    }
  }

  void _showErrorDialog(String message) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Error'),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  Future<void> _processImage(File imageFile) async {
    final imageUrl = await processAndSaveImage(imageFile);
    _navigateToLoadingScreen(imageUrl);
  }

  void _navigateToLoadingScreen(ImageUrl imageUrl) {
    Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (context) => LessonLoadingScreen(imageUrl: imageUrl),
      ),
    );
  }

  Future<void> _toggleTorch() async {
    try {
      if (_isTorchOn) {
        await _controller!.setFlashMode(FlashMode.off);
      } else {
        await _controller!.setFlashMode(FlashMode.torch);
      }
      setState(() {
        _isTorchOn = !_isTorchOn;
      });
    } catch (e) {
      _showErrorDialog(
          'The flashlight could not be toggled. Please check your device settings and try again.');
    }
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          if (_isInitializing)
            const Center(child: CircularProgressIndicator())
          else
            CameraPreviewWidget(
              controller: _controller,
              hasCameraPermission: _hasCameraPermission,
            ),
          CameraControlsWidget(
            onCapturePressed: _captureAndGenerateLesson,
            onGalleryPressed: () => _pickImage(ImageSource.gallery),
            onTorchPressed: _toggleTorch,
            isTorchOn: _isTorchOn,
          ),
        ],
      ),
    );
  }
}
