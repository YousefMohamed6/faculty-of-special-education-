import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton(
      {super.key, required this.onPressed, this.iconSize, required this.icon});
  final void Function() onPressed;
  final double? iconSize;
  final Widget icon;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: icon,
      iconSize: iconSize,
      onPressed: onPressed,
    );
  }
}
