import 'package:faculty_of_special_education/features/services/cubit/navigation_cubit.dart';
import 'package:faculty_of_special_education/my_app.dart';
import 'package:faculty_of_special_education/simple_observer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(
    BlocProvider(
      create: (context) => ServicesCubit(),
      child: MyApp(),
    ),
  );
  Bloc.observer = SimpleObserver();
}
