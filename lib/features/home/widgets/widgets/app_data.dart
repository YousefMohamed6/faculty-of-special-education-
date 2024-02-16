import 'package:faculty_of_special_education/core/uitls/constants/links.dart';
import 'package:faculty_of_special_education/features/home/widgets/widgets/action_button.dart';
import 'package:flutter/material.dart';

class AppData extends StatelessWidget {
  const AppData({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ActionButton(
          url: kLocationUrl,
          icon: Icons.location_on,
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
          url: kFacebookUrl,
          icon: Icons.facebook,
        ),
      ],
    );
  }
}
