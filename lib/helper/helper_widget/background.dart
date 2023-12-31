import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  const Background({super.key, this.child});
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xff11496A), Colors.grey],
        ),
      ),
      child: child,
    );
  }
}
