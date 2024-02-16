import 'package:flutter/material.dart';

class VerticalSizedBox extends StatelessWidget {
  const VerticalSizedBox(this.height,{super.key,});
  final double height;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
    );
  }
}
