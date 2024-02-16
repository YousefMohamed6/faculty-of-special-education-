import 'package:faculty_of_special_education/core/widgets/custom_text.dart';
import 'package:flutter/material.dart';

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
