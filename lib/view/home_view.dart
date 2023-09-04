import 'package:faculty_of_special_education/constants/images.dart';
import 'package:faculty_of_special_education/constants/links.dart';
import 'package:faculty_of_special_education/cubit/navigation_cubit.dart';
import 'package:faculty_of_special_education/helper/helper_function/url%20launcher.dart';
import 'package:faculty_of_special_education/helper/helper_widget/asset_image.dart';
import 'package:faculty_of_special_education/helper/helper_widget/avatar.dart';
import 'package:faculty_of_special_education/helper/helper_widget/custom_icon_button.dart';
import 'package:faculty_of_special_education/helper/helper_widget/custom_text.dart';
import 'package:faculty_of_special_education/helper/helper_widget/vertical_sizebox.dart';
import 'package:faculty_of_special_education/view/widgets/custom_page.dart';
import 'package:faculty_of_special_education/view/widgets/navigationbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationCubit, NavigationState>(
      builder: (context, state) {
        if (state is Initial) {
          return Scaffold(
            bottomNavigationBar: CustomBottomBar(
              currentIndex:
                  BlocProvider.of<NavigationCubit>(context).currentIndex,
            ),
            appBar: AppBar(
              title: const CustomText(text: 'من نحن'),
              centerTitle: true,
            ),
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Avatar(image: kcollegeImage),
                const VerticalSizedBox(16),
                const CustomText(
                  text: 'كلية التربية النوعية',
                  fontWeight: FontWeight.bold,
                  fontSize: 48,
                ),
                const VerticalSizedBox(16),
                const CustomText(
                  text: 'جامعة طنطا',
                  fontWeight: FontWeight.bold,
                  fontSize: 48,
                ),
                const VerticalSizedBox(16),
                Row(
                  children: [
                    CustomIconButton(
                      onPressed: () async {
                        await urlLauncher(url: kFacebookUrl);
                      },
                      icon: const Icon(Icons.facebook_outlined),
                    ),
                    CustomIconButton(
                      onPressed: () async {
                        await urlLauncher(url: kMessangerUrl);
                      },
                      icon: const CustomAssetImage(
                        imagePath: kMessangerImage,
                      ),
                    ),
                    CustomIconButton(
                      onPressed: () async {
                        await urlLauncher(url: kWebSiteUrl);
                      },
                      icon: const CustomAssetImage(
                        imagePath: kWebsiteImage,
                      ),
                    ),
                    CustomIconButton(
                      onPressed: () async {
                        await urlLauncher(url: kLocationUrl);
                      },
                      icon: const Icon(
                        Icons.location_on,
                      ),
                    ),
                  ],
                )
              ],
            ),
          );
        } else if (state is Book) {
          return const CustomPageView(
            title: 'الكتاب الالكتروني',
            url: kBooKUrl,
          );
        } else if (state is Payment) {
          return const CustomPageView(
            title: 'الدفع الالكتروني',
            url: kPaymentUrl,
          );
        } else if (state is Email) {
          return const CustomPageView(
            title: 'الايميل الجامعي',
            url: kStudentEmailUrl,
          );
        } else {
          return const CustomPageView(
            title: 'تسجيل المقررات',
            url: kRegisterUrl,
          );
        }
      },
    );
  }
}
