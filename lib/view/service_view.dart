import 'package:faculty_of_special_education/constants/links.dart';
import 'package:faculty_of_special_education/cubit/navigation_cubit.dart';
import 'package:faculty_of_special_education/view/home_view.dart';
import 'package:faculty_of_special_education/view/widgets/service_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ServiceView extends StatelessWidget {
  const ServiceView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationCubit, NavigationState>(
      builder: (context, state) {
        if (state is Initial) {
          return const HomeView();
        } else if (state is Book) {
          return const ServiceViewBody(
            title: 'الكتاب الالكتروني',
            url: kBooKUrl,
          );
        } else if (state is Payment) {
          return const ServiceViewBody(
            title: 'التحصيل الالكتروني',
            url: kPaymentUrl,
          );
        } else if (state is Email) {
          return const ServiceViewBody(
            title: 'الايميل الجامعي',
            url: kEmailUrl,
          );
        } else {
          return const ServiceViewBody(
            title: 'تسجيل المقررات',
            url: kRegisterUrl,
          );
        }
      },
    );
  }
}
