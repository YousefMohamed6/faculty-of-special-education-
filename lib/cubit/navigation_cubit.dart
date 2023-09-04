import 'package:flutter_bloc/flutter_bloc.dart';

part 'navigation_state.dart';

class NavigationCubit extends Cubit<NavigationState> {
  NavigationCubit() : super(Initial());
  int currentIndex = 0;
  void navigate(int select) {
    if (select == 0) {
      emit(Initial());
    } else if (select == 1) {
      emit(Book());
    } else if (select == 2) {
      emit(Payment());
    } else if (select == 3) {
      emit(Email());
    } else {
      emit(Rigester());
    }
  }
}
