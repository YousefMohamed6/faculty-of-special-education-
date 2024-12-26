import 'dart:io';

import 'package:url_launcher/url_launcher.dart';

class UrlLauncher {
  static bool get isMobile => Platform.isAndroid || Platform.isIOS;

  static Future<void> launch({required String url}) async {
    if (url.isEmpty) return;
    final Uri urls = Uri.parse(url);
    if (await canLaunchUrl(urls)) {
      launchUrl(urls, mode: LaunchMode.externalApplication);
    }
  }
}
