import 'package:flutter_bloc/flutter_bloc.dart';

part 'navigation_state.dart';

class NavigationCubit extends Cubit<NavigationState> {
  NavigationCubit() : super(Initial());
  bool isArabic = true;
  String language = 'ar';
  void changeLanguage() {
    isArabic = !isArabic;
    emit(Initial());
  }

  int currentIndex = 0;
  void navigate(int select) {
    currentIndex = select;
    if (select == 0) {
      emit(Book());
    } else if (select == 1) {
      emit(Payment());
    } else if (select == 2) {
      emit(Email());
    } else if (select == 3) {
      emit(Rigester());
    } else if (select == 4) {
      emit(Initial());
    }
  }
}
