import 'package:faculty_of_special_education/core/widgets/custom_text.dart';
import 'package:faculty_of_special_education/generated/l10n.dart';
import 'package:flutter/material.dart';

class AppName extends StatelessWidget {
  const AppName({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomText(
      text: S.of(context).apptitle,
      fontWeight: FontWeight.bold,
      fontSize: MediaQuery.sizeOf(context).height * 0.032,
      fontFamily: 'Cairo',
      color: Colors.white,
    );
  }
}
