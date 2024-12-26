import 'package:faculty_of_special_education/features/services/presentation/widgets/navigationbar.dart';
import 'package:faculty_of_special_education/generated/l10n.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomBar(),
      appBar: AppBar(
        title: Text(AppLocalization.of(context).settings),
      ),
      body: Center(
        child: Text('Settings Page'),
      ),
    );
  }
}
