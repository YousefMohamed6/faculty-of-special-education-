import 'package:faculty_of_special_education/core/uitls/constants/images.dart';
import 'package:faculty_of_special_education/core/widgets/asset_image.dart';
import 'package:flutter/material.dart';

class AppIcon extends StatelessWidget {
  const AppIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return const Flexible(
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: CustomAssetImage(
          imagePath: kcollegeImage,
          width: 1000,
          height: 1000,
        ),
      ),
    );
  }
}
