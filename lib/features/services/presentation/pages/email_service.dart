import 'package:faculty_of_special_education/core/managers/links_managers.dart';
import 'package:faculty_of_special_education/features/services/presentation/widgets/custom_web_view.dart';
import 'package:faculty_of_special_education/generated/l10n.dart';
import 'package:flutter/material.dart';

class EmailPage extends StatelessWidget {
  const EmailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomWebView(
      title: AppLocalization.of(context).email,
      url: LinksManagers.kEmailUrl,
    );
  }
}
