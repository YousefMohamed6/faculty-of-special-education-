import 'package:faculty_of_special_education/constants/links.dart';
import 'package:faculty_of_special_education/cubit/navigation_cubit.dart';
import 'package:faculty_of_special_education/generated/l10n.dart';
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
          return ServiceViewBody(
            title: S.of(context).book,
            url: kBooKUrl,
          );
        } else if (state is Payment) {
          return ServiceViewBody(
            title: S.of(context).payment,
            url: kPaymentUrl,
          );
        } else if (state is Email) {
          return ServiceViewBody(
            title: S.of(context).email,
            url: kEmailUrl,
          );
        } else {
          return ServiceViewBody(
            title: S.of(context).register,
            url: kRegisterUrl,
          );
        }
      },
    );
  }
}
