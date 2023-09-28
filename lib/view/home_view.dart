import 'package:faculty_of_special_education/helper/helper_widget/background.dart';
import 'package:faculty_of_special_education/helper/helper_widget/vertical_sizebox.dart';
import 'package:faculty_of_special_education/view/widgets/app_data.dart';
import 'package:faculty_of_special_education/view/widgets/app_icon.dart';
import 'package:faculty_of_special_education/view/widgets/app_name.dart';
import 'package:faculty_of_special_education/view/widgets/app_subtitle.dart';
import 'package:faculty_of_special_education/view/widgets/language_button.dart';
import 'package:faculty_of_special_education/view/widgets/next_button.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Background(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              VerticalSizedBox(24),
              LanguageButton(),
              VerticalSizedBox(24),
              AppIcon(),
              VerticalSizedBox(16),
              AppName(),
              VerticalSizedBox(8),
              AppSubTitle(),
              VerticalSizedBox(16),
              AppData(),
              VerticalSizedBox(32),
              NextButton(),
            ],
          ),
        ),
      ),
    );
  }
}
