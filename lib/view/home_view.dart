import 'package:faculty_of_special_education/constants/links.dart';
import 'package:faculty_of_special_education/cubit/navigation_cubit.dart';
import 'package:faculty_of_special_education/view/home_page.dart';
import 'package:faculty_of_special_education/view/widgets/custom_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationCubit, NavigationState>(
      builder: (context, state) {
        if (state is Initial) {
          return const HomePage();
        } else if (state is Book) {
          return const CustomPageView(
            title: 'الكتاب الالكتروني',
            url: kBooKUrl,
          );
        } else if (state is Payment) {
          return const CustomPageView(
            title: 'التحصيل الالكتروني',
            url: kPaymentUrl,
          );
        } else if (state is Email) {
          return const CustomPageView(
            title: 'الايميل الجامعي',
            url: kEmailUrl,
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
