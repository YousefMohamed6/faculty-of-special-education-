import 'package:faculty_of_special_education/constants/color.dart';
import 'package:faculty_of_special_education/cubit/navigation_cubit.dart';
import 'package:faculty_of_special_education/generated/l10n.dart';
import 'package:faculty_of_special_education/helper/helper_widget/custom_button.dart';
import 'package:faculty_of_special_education/helper/helper_widget/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NextButton extends StatelessWidget {
  const NextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      onPressed: () {
        BlocProvider.of<NavigationCubit>(context).navigate(0);
      },
      color: Colors.white,
      child: CustomText(
        text: S.of(context).letsgo,
        fontSize: 20,
        color: kPrimryColor,
      ),
    );
  }
}
