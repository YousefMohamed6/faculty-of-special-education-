import 'package:faculty_of_special_education/helper/helper_widget/custom_text.dart';
import 'package:flutter/material.dart';

class AppSubTitle extends StatelessWidget {
  const AppSubTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomText(
      text: 'جامعة طنطا',
      fontSize: 28,
      fontFamily: 'Cairo',
      color: Colors.white,
    );
  }
}
