import 'package:faculty_of_special_education/core/widgets/background.dart';
import 'package:faculty_of_special_education/core/widgets/vertical_sizebox.dart';
import 'package:faculty_of_special_education/features/home/widgets/widgets/app_data.dart';
import 'package:faculty_of_special_education/features/home/widgets/widgets/app_icon.dart';
import 'package:faculty_of_special_education/features/home/widgets/widgets/app_name.dart';
import 'package:faculty_of_special_education/features/home/widgets/widgets/app_subtitle.dart';
import 'package:faculty_of_special_education/features/home/widgets/widgets/language_button.dart';
import 'package:faculty_of_special_education/features/home/widgets/widgets/owner_text.dart';
import 'package:faculty_of_special_education/features/home/widgets/widgets/start_service_button.dart';
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
              Expanded(child: VerticalSizedBox(24)),
              LanguageButton(),
              Expanded(child: VerticalSizedBox(24)),
              AppIcon(),
              Expanded(child: VerticalSizedBox(16)),
              AppName(),
              Expanded(child: VerticalSizedBox(8)),
              AppSubTitle(),
              VerticalSizedBox(16),
              AppData(),
              Expanded(child: VerticalSizedBox(48)),
              StartServiceButton(),
              Expanded(child: VerticalSizedBox(48)),
              OwnerText(),
              Expanded(child: VerticalSizedBox(32)),
            ],
          ),
        ),
      ),
    );
  }
}
