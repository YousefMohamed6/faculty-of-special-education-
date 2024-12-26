part of 'navigation_cubit.dart';

sealed class ServicesState {}

final class Initial extends ServicesState {}

final class PaymentService extends ServicesState {}

final class BookService extends ServicesState {}

final class RegisterService extends ServicesState {}

final class EmailService extends ServicesState {}

final class SettingsService extends ServicesState {}
