import 'package:faculty_of_special_education/core/uitls/constants/links.dart';
import 'package:faculty_of_special_education/features/services/widgets/custom_web_view.dart';
import 'package:faculty_of_special_education/generated/l10n.dart';
import 'package:flutter/material.dart';

class RegisterServices extends StatelessWidget {
  const RegisterServices({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomWebView(
      title: S.of(context).register,
      url: kRegisterUrl,
    );
  }
}
