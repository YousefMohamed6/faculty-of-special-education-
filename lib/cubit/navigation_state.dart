part of 'navigation_cubit.dart';

sealed class NavigationState {}

final class Initial extends NavigationState {}

final class Payment extends NavigationState {}

final class Book extends NavigationState {}

final class Rigester extends NavigationState {}

final class Email extends NavigationState {}
