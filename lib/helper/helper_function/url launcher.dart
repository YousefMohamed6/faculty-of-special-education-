import 'package:flutter/foundation.dart';
import 'package:url_launcher/url_launcher.dart';

bool plateform() {
  if (defaultTargetPlatform == TargetPlatform.android) {
    return true;
  } else {
    return false;
  }
}

Future<void> urlLauncher({required String url}) async {
  final Uri urls = Uri.parse(url);
  if (await canLaunchUrl(urls)) {
    launchUrl(urls, mode: LaunchMode.externalNonBrowserApplication);
  }
}
