import 'package:faculty_of_special_education/features/services/presentation/manager/navigation_cubit.dart';
import 'package:faculty_of_special_education/features/services/presentation/pages/book_service.dart';
import 'package:faculty_of_special_education/features/services/presentation/pages/email_service.dart';
import 'package:faculty_of_special_education/features/services/presentation/pages/payment_service%20.dart';
import 'package:faculty_of_special_education/features/services/presentation/pages/register_service.dart';
import 'package:faculty_of_special_education/features/settings/presentation/pages/settings_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ServiceView extends StatelessWidget {
  const ServiceView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ServicesCubit, ServicesState>(
      builder: (context, state) {
        if (state is BookService) {
          return const BookPage();
        }
        if (state is PaymentService) {
          return const PaymentPage();
        }
        if (state is EmailService) {
          return const EmailPage();
        }
        if (state is RegisterService) {
          return const RegisterPage();
        }
        if (state is SettingsService) {
          return const SettingsPage();
        } else {
          return const BookPage();
        }
      },
    );
    // }
  }
}
