import 'package:faculty_of_special_education/core/uitls/constants/color.dart';
import 'package:faculty_of_special_education/core/widgets/custom_button.dart';
import 'package:faculty_of_special_education/core/widgets/custom_text.dart';
import 'package:faculty_of_special_education/features/services/service_view.dart';
import 'package:faculty_of_special_education/generated/l10n.dart';
import 'package:flutter/material.dart';

class StartServiceButton extends StatelessWidget {
  const StartServiceButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      onPressed: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const ServiceView()));
      },
      color: Colors.white,
      child: CustomText(
        text: S.of(context).letsgo,
        fontSize: MediaQuery.sizeOf(context).height * 0.024,
        color: kPrimryColor,
      ),
    );
  }
}
