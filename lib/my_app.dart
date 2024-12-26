import 'package:faculty_of_special_education/features/home/presentation/pages/home_view.dart';
import 'package:faculty_of_special_education/features/settings/presentation/manager/cubit/settings_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'generated/l10n.dart';

class MyApp extends StatelessWidget {
  const MyApp._();
  static const MyApp instance = MyApp._();
  factory MyApp() => instance;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsCubit, SettingsState>(builder: (context, state) {
      return PopScope(
        child: MaterialApp(
          locale: Locale(
            BlocProvider.of<SettingsCubit>(context).language,
          ),
          localizationsDelegates: const [
            AppLocalization.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: AppLocalization.delegate.supportedLocales,
          debugShowCheckedModeBanner: false,
          home: const HomeView(),
        ),
      );
    });
  }
}
