import 'package:flutter/material.dart';

class CustomCircleAvatar extends StatelessWidget {
  const CustomCircleAvatar({
    super.key,
    required this.image,
    this.radius,
    this.backgroundColor,
  });
  final String image;
  final double? radius;
  final Color? backgroundColor;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius ?? 124 + 1,
      backgroundColor: backgroundColor ?? Colors.grey,
      child: CircleAvatar(
        radius: radius ?? 124,
        backgroundImage: AssetImage(
          image,
        ),
      ),
    );
  }
}
