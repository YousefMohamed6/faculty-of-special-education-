import 'package:faculty_of_special_education/constants/color.dart';
import 'package:faculty_of_special_education/cubit/navigation_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LanguageButton extends StatelessWidget {
  const LanguageButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationCubit, NavigationState>(
        builder: (context, state) {
      return Align(
        alignment: Alignment.topRight,
        child: MaterialButton(
          shape: const CircleBorder(),
          color: kPrimryColor,
          onPressed: () {
            BlocProvider.of<NavigationCubit>(context).changeLanguage();
          },
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              BlocProvider.of<NavigationCubit>(context).isArabic ? 'Ar' : 'En',
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ),
        ),
      );
    });
  }
}
