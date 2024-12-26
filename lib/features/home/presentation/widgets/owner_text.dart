import 'package:faculty_of_special_education/core/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class OwnerText extends StatelessWidget {
  const OwnerText({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomText(
      text: "Powered By : Yousef Mohamed",
      color: Colors.white,
      fontWeight: FontWeight.w300,
      fontSize: MediaQuery.sizeOf(context).height * 0.022,
    );
  }
}
