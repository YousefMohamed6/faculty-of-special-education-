import 'package:faculty_of_special_education/generated/l10n.dart';
import 'package:faculty_of_special_education/helper/helper_widget/custom_text.dart';
import 'package:flutter/material.dart';

class AppName extends StatelessWidget {
  const AppName({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomText(
      text: S.of(context).apptitle,
      fontWeight: FontWeight.bold,
      fontSize: 28,
      fontFamily: 'Cairo',
      color: Colors.white,
    );
  }
}
