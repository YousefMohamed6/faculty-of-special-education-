import 'package:faculty_of_special_education/core/uitls/simple_observer.dart';
import 'package:faculty_of_special_education/features/settings/presentation/manager/cubit/settings_cubit.dart';
import 'package:faculty_of_special_education/my_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(
    BlocProvider(
      create: (context) => SettingsCubit(),
      child: MyApp(),
    ),
  );
  Bloc.observer = SimpleObserver();
}
