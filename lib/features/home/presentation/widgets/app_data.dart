import 'package:faculty_of_special_education/core/managers/links_managers.dart';
import 'package:faculty_of_special_education/features/home/presentation/widgets/navigate_to_browser_button.dart';
import 'package:flutter/material.dart';

class AppData extends StatelessWidget {
  const AppData({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        NavigateToBrowerButton(
          url: LinksManagers.kLocationUrl,
          icon: Icons.location_on,
        ),
        NavigateToBrowerButton(
          url: LinksManagers.kWebSiteUrl,
          icon: Icons.language,
        ),
        NavigateToBrowerButton(
          url: LinksManagers.kPhoneUrl,
          icon: Icons.call,
        ),
        NavigateToBrowerButton(
          url: LinksManagers.kFacebookUrl,
          icon: Icons.facebook,
        ),
      ],
    );
  }
}
