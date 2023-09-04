part of 'navigation_cubit.dart';

sealed class NavigationState {}

final class Initial extends NavigationState {}

final class Payment extends NavigationState {
  final String title;
  final Widget body;

  Payment({required this.title, required this.body});
}

final class Book extends NavigationState {
  final String title;
  final Widget body;

  Book({required this.title, required this.body});
}

final class Rigester extends NavigationState {
  final String title;
  final Widget body;

  Rigester({required this.title, required this.body});
}

final class Email extends NavigationState {
  final String title;
  final Widget body;

  Email({required this.title, required this.body});
}
