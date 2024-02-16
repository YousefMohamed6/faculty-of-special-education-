part of 'navigation_cubit.dart';

sealed class ServicesState {}

final class Initial extends ServicesState {}

final class PaymentService extends ServicesState {
  PaymentService();
}

final class BookService extends ServicesState {
  BookService();
}

final class RegisterService extends ServicesState {
  RegisterService();
}

final class EmailService extends ServicesState {
  EmailService();
}
