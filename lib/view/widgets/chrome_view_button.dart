import 'package:faculty_of_special_education/helper/helper_function/url_launcher.dart';
import 'package:flutter/material.dart';

class ChromeViewButton extends StatelessWidget {
  const ChromeViewButton({super.key, required this.url});
  final String url;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () async {
        await urlLauncher(url: url);
      },
      icon: const Icon(
        Icons.language,
        size: 32,
      ),
    );
  }
}
