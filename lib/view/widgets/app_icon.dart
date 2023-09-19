import 'package:faculty_of_special_education/constants/images.dart';
import 'package:faculty_of_special_education/helper/helper_widget/asset_image.dart';
import 'package:flutter/material.dart';

class AppIcon extends StatelessWidget {
  const AppIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomAssetImage(
      imagePath: kcollegeImage,
      width: (MediaQuery.sizeOf(context).width) / 1.5,
    );
  }
}
