import 'package:flutter_bloc/flutter_bloc.dart';

part 'navigation_state.dart';

class ServicesCubit extends Cubit<ServicesState> {
  ServicesCubit() : super(Initial());
  bool isArabic = true;
  String language = 'ar';

  void changeLanguage({required bool isArabic}) {
    this.isArabic = isArabic;
    emit(Initial());
  }

  int currentIndex = 0;
  void navigate({required int currentIndex}) {
    this.currentIndex = currentIndex;
    emit(Initial());
    if (this.currentIndex == 0) {
      emit(BookService());
    } else if (this.currentIndex == 1) {
      emit(PaymentService());
    } else if (this.currentIndex == 2) {
      emit(EmailService());
    } else if (this.currentIndex == 3) {
      emit(RegisterService());
    }
  }
}
