import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimpleObserver implements BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    debugPrint(change.toString());
  }

  @override
  void onClose(BlocBase bloc) {
    debugPrint('Closed $bloc');
  }

  @override
  void onCreate(BlocBase bloc) {
    debugPrint('Created $bloc');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    debugPrint('Error: $error');
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    debugPrint('Event: $event');
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    debugPrint(transition.toString());
  }
}
