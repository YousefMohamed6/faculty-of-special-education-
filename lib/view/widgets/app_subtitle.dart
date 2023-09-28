import 'package:faculty_of_special_education/generated/l10n.dart';
import 'package:faculty_of_special_education/helper/helper_widget/custom_text.dart';
import 'package:flutter/material.dart';

class AppSubTitle extends StatelessWidget {
  const AppSubTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomText(
      text: S.of(context).appSubTitle,
      fontSize: 26,
      fontFamily: 'Cairo',
      color: Colors.white,
    );
  }
}
