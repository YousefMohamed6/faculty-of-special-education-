import 'package:faculty_of_special_education/core/widgets/background.dart';
import 'package:faculty_of_special_education/features/home/presentation/widgets/app_data.dart';
import 'package:faculty_of_special_education/features/home/presentation/widgets/app_icon.dart';
import 'package:faculty_of_special_education/features/home/presentation/widgets/app_name.dart';
import 'package:faculty_of_special_education/features/home/presentation/widgets/app_subtitle.dart';
import 'package:faculty_of_special_education/features/home/presentation/widgets/owner_text.dart';
import 'package:faculty_of_special_education/features/home/presentation/widgets/start_service_button.dart';
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
              SizedBox(height: 24),
              AppIcon(),
              SizedBox(height: 16),
              AppName(),
              SizedBox(height: 16),
              AppSubTitle(),
              SizedBox(height: 16),
              AppData(),
              SizedBox(height: 16),
              StartServiceButton(),
              SizedBox(height: 16),
              OwnerText(),
              SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
