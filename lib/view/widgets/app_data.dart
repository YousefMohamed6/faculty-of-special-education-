import 'package:faculty_of_special_education/constants/links.dart';
import 'package:faculty_of_special_education/view/widgets/action_button.dart';
import 'package:flutter/material.dart';

class AppData extends StatelessWidget {
  const AppData({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ActionButton(
          url: kFacebookUrl,
          icon: Icons.facebook,
        ),
        ActionButton(
          url: kWebSiteUrl,
          icon: Icons.language,
        ),
        ActionButton(
          url: kPhoneUrl,
          icon: Icons.call,
        ),
        ActionButton(
          url: kLocationUrl,
          icon: Icons.location_on,
        ),
      ],
    );
  }
}
