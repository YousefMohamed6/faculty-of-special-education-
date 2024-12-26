import 'package:flutter/material.dart';

class CustomAssetImage extends StatelessWidget {
  const CustomAssetImage({
    super.key,
    required this.imagePath,
    this.width,
    this.height,
  });
  final String imagePath;
  final double? width;
  final double? height;
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imagePath,
      width: width,
      height: height,
    );
  }
}
