import 'package:faculty_of_special_education/constants/color.dart';
import 'package:faculty_of_special_education/constants/images.dart';
import 'package:faculty_of_special_education/constants/links.dart';
import 'package:faculty_of_special_education/cubit/navigation_cubit.dart';
import 'package:faculty_of_special_education/helper/helper_function/url_launcher.dart';
import 'package:faculty_of_special_education/helper/helper_widget/asset_image.dart';
import 'package:faculty_of_special_education/helper/helper_widget/background.dart';
import 'package:faculty_of_special_education/helper/helper_widget/custom_button.dart';
import 'package:faculty_of_special_education/helper/helper_widget/custom_icon_button.dart';
import 'package:faculty_of_special_education/helper/helper_widget/custom_text.dart';
import 'package:faculty_of_special_education/helper/helper_widget/vertical_sizebox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const VerticalSizedBox(24),
            CustomAssetImage(
              imagePath: kcollegeImage,
              width: (MediaQuery.sizeOf(context).width) / 1.5,
            ),
            const VerticalSizedBox(16),
            const CustomText(
              text: 'كلية التربية النوعية',
              fontWeight: FontWeight.bold,
              fontSize: 32,
              fontFamily: 'Cairo',
              color: Colors.white,
            ),
            const VerticalSizedBox(8),
            const CustomText(
              text: 'جامعة طنطا',
              fontSize: 28,
              fontFamily: 'Cairo',
              color: Colors.white,
            ),
            const VerticalSizedBox(16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomIconButton(
                  onPressed: () async {
                    await urlLauncher(url: kFacebookUrl);
                  },
                  icon: const Icon(
                    Icons.facebook,
                    color: Colors.white,
                  ),
                  iconSize: 50,
                ),
                CustomIconButton(
                  onPressed: () async {
                    await urlLauncher(url: kWebSiteUrl);
                  },
                  icon: const Icon(
                    Icons.language,
                    color: Colors.white,
                  ),
                  iconSize: 50,
                ),
                CustomIconButton(
                  onPressed: () async {
                    await urlLauncher(url: kPhoneUrl);
                  },
                  icon: const Icon(
                    Icons.call,
                    color: Colors.white,
                  ),
                  iconSize: 50,
                ),
                CustomIconButton(
                  onPressed: () async {
                    await urlLauncher(url: kLocationUrl);
                  },
                  icon: const Icon(
                    Icons.location_on,
                    color: Colors.white,
                  ),
                  iconSize: 50,
                ),
              ],
            ),
            const VerticalSizedBox(32),
            CustomButton(
              onPressed: () {
                BlocProvider.of<NavigationCubit>(context).navigate(0);
              },
              color: Colors.white,
              child: const CustomText(
                text: 'هيا بنا',
                fontSize: 24,
                color: kPrimryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
