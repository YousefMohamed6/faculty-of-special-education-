import 'package:faculty_of_special_education/helper/helper_function/url_launcher.dart';
import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({super.key, required this.url, required this.icon});
  final String url;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () async {
        await urlLauncher(url: url);
      },
      icon: Icon(
        icon,
        color: Colors.white,
      ),
      iconSize: 50,
    );
  }
}
