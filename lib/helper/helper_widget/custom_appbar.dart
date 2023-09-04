import 'package:flutter/material.dart';
import 'package:faculty_of_special_education/helper/helper_widget/custom_text.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title, this.actions});
  final String title;
  final List<Widget>? actions;
  @override
  AppBar build(BuildContext context) {
    return AppBar(
      title: CustomText(
        text: title,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
      centerTitle: true,
      backgroundColor: Colors.grey.withOpacity(0.5),
      actions: actions,
    );
  }
}
