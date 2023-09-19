import 'package:faculty_of_special_education/helper/helper_widget/custom_text.dart';
import 'package:flutter/material.dart';

class AppName extends StatelessWidget {
  const AppName({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomText(
      text: 'كلية التربية النوعية',
      fontWeight: FontWeight.bold,
      fontSize: 32,
      fontFamily: 'Cairo',
      color: Colors.white,
    );
  }
}
