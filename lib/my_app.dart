import 'package:faculty_of_special_education/features/home/home_view.dart';
import 'package:faculty_of_special_education/features/services/cubit/navigation_cubit.dart';
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
    return BlocBuilder<ServicesCubit, ServicesState>(builder: (context, state) {
      return PopScope(
        child: MaterialApp(
          locale: Locale(
            BlocProvider.of<ServicesCubit>(context).isArabic ? 'ar' : 'en',
          ),
          localizationsDelegates: const [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: S.delegate.supportedLocales,
          debugShowCheckedModeBanner: false,
          home: const HomeView(),
        ),
      );
    });
  }
}
