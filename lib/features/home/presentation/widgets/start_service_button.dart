import 'package:faculty_of_special_education/core/managers/colors_manager.dart';
import 'package:faculty_of_special_education/core/widgets/custom_button.dart';
import 'package:faculty_of_special_education/core/widgets/custom_text.dart';
import 'package:faculty_of_special_education/features/services/presentation/manager/navigation_cubit.dart';
import 'package:faculty_of_special_education/features/services/presentation/pages/service_view.dart';
import 'package:faculty_of_special_education/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StartServiceButton extends StatelessWidget {
  const StartServiceButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => BlocProvider(
              create: (context) => ServicesCubit(),
              child: const ServiceView(),
            ),
          ),
        );
      },
      color: Colors.white,
      child: CustomText(
        text: AppLocalization.of(context).letsgo,
        fontSize: MediaQuery.sizeOf(context).height * 0.024,
        color: ColorsManager.kPrimryColor,
      ),
    );
  }
}
