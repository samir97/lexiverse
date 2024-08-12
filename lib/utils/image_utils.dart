import 'dart:io';

import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:lexiverse/data/model/lesson.model.dart';
import 'package:path_provider/path_provider.dart';
import 'package:uuid/uuid.dart';

Future<ImageUrl> processAndSaveImage(File imageFile) async {
  Directory? directory;
  if (Platform.isAndroid) {
    directory = await getExternalStorageDirectory();
  } else if (Platform.isIOS) {
    directory = await getLibraryDirectory();
  }

  if (directory == null) {
    throw Exception('Unable to get storage directory');
  }

  final imagesDir = Directory('${directory.path}/images');
  if (!await imagesDir.exists()) {
    await imagesDir.create(recursive: true);
  }

  final fileName = '${const Uuid().v4()}.jpg';

  final sizes = {
    'small': 56,
    'medium': 640,
    'large': 1280,
  };

  final urls = <String, String>{};

  for (final entry in sizes.entries) {
    final size = entry.value;
    final quality = size == 1280 ? 90 : 80;

    final compressedImage = await FlutterImageCompress.compressWithFile(
      imageFile.absolute.path,
      minWidth: size,
      minHeight: size,
      quality: quality,
    );

    if (compressedImage != null) {
      final sizeFileName = '${entry.key}_$fileName';
      final file = File('${imagesDir.path}/$sizeFileName');
      await file.writeAsBytes(compressedImage);
      urls[entry.key] = file.path;
    }
  }

  return ImageUrl(
    small: urls['small']!,
    medium: urls['medium']!,
    large: urls['large']!,
  );
}
