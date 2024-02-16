import 'package:faculty_of_special_education/features/services/cubit/navigation_cubit.dart';
import 'package:faculty_of_special_education/features/services/widgets/book_service.dart';
import 'package:faculty_of_special_education/features/services/widgets/email_service.dart';
import 'package:faculty_of_special_education/features/services/widgets/payment_service%20.dart';
import 'package:faculty_of_special_education/features/services/widgets/register_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ServiceView extends StatelessWidget {
  const ServiceView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ServicesCubit, ServicesState>(
      builder: (context, state) {
        if (state is BookService) {
          return const BookServices();
        } else if (state is PaymentService) {
          return const PaymentServices();
        } else if (state is EmailService) {
          return const EmailServices();
        } else if (state is RegisterService) {
          return const RegisterServices();
        } else {
          return const BookServices();
        }
      },
    );
    // }
  }
}
