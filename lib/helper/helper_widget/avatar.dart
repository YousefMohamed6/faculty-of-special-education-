import 'package:flutter/material.dart';


class Avatar extends StatelessWidget {
  const Avatar({super.key,required this.image, this.radius, this.backgroundColor});
  final String image;
  final double? radius;
  final Color? backgroundColor;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius == null ? 101 : radius! + 1,
      backgroundColor: backgroundColor ?? Colors.grey,
      child: CircleAvatar(
        radius: radius ?? 100,
        backgroundImage: AssetImage(image),
      ),
    );
  }
}
