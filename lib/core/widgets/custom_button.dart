import 'package:flutter/material.dart';


class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onPressed,
    required this.child,
    this.color,
    this.minWidth,
    this.height,
  });
  final VoidCallback onPressed;
  final Widget child;
  final Color? color;
  final double? minWidth;
  final double? height;
  @override
  Widget build(context) {
    return Column(
      children: [
        MaterialButton(
          onPressed: onPressed,
          color: color ,
          height: height ?? 50,
          elevation: 0,
          child: child,
        ),
      ],
    );
  }
}
