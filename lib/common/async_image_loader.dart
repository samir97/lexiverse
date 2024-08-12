import 'dart:io';

import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class AsyncImageLoader extends StatefulWidget {
  final String imageUrl;
  final double? width;
  final double? height;
  final double? iconFraction;
  final BoxFit fit;

  const AsyncImageLoader({
    super.key,
    required this.imageUrl,
    this.width,
    this.height,
    this.iconFraction,
    this.fit = BoxFit.cover,
  });

  @override
  State<AsyncImageLoader> createState() => _AsyncImageLoaderState();
}

class _AsyncImageLoaderState extends State<AsyncImageLoader> {
  bool _isLoading = true;
  bool _hasError = false;
  bool _didStartLoading = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (!_didStartLoading) {
      _loadImage();
      _didStartLoading = true;
    }
  }

  void _loadImage() {
    final imageProvider = _getImageProvider();
    imageProvider.resolve(const ImageConfiguration()).addListener(
          ImageStreamListener(
            (ImageInfo image, bool synchronousCall) {
              if (mounted) {
                setState(() {
                  _isLoading = false;
                });
              }
            },
            onError: (dynamic exception, StackTrace? stackTrace) {
              if (mounted) {
                setState(() {
                  _isLoading = false;
                  _hasError = true;
                });
              }
            },
          ),
        );
  }

  ImageProvider _getImageProvider() {
    if (widget.imageUrl.startsWith('/')) {
      return FileImage(File(widget.imageUrl));
    } else {
      return AssetImage(widget.imageUrl);
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return Shimmer.fromColors(
        baseColor: Colors.grey[300]!.withOpacity(0.4),
        highlightColor: Colors.grey[100]!.withOpacity(0.3),
        child: Container(
          width: widget.width,
          height: widget.height,
          color: Colors.grey[300],
        ),
      );
    } else if (_hasError) {
      return Container(
        width: widget.width,
        height: widget.height,
        color: Colors.grey[300]!.withOpacity(0.4),
        child: FractionallySizedBox(
          widthFactor: widget.iconFraction ?? 0.25,
          heightFactor: widget.iconFraction ?? 0.25,
          child: const FittedBox(
            fit: BoxFit.contain,
            child: Icon(Icons.error_outline, color: Colors.grey),
          ),
        ),
      );
    } else {
      return Image(
        image: _getImageProvider(),
        fit: widget.fit,
        width: widget.width,
        height: widget.height,
        errorBuilder: (context, error, stackTrace) {
          return Container(
            width: widget.width,
            height: widget.height,
            color: Colors.grey[300],
            child: const Icon(Icons.error_outline, color: Colors.red),
          );
        },
      );
    }
  }
}
