import 'package:faculty_of_special_education/constants/links.dart';
import 'package:faculty_of_special_education/helper/helper_widget/webview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'navigation_state.dart';

class NavigationCubit extends Cubit<NavigationState> {
  NavigationCubit() : super(Initial());
  int currentIndex = 0;
  void navigate(int select) {
    if (select == 0) {
      emit(
        Book(
          title: 'الكتاب الالكتروني',
          body: const WebViewApp(
            url: kBooKUrl,
          ),
        ),
      );
    } else if (select == 1) {
      emit(
        Payment(
          title: 'التحصيل الالكتروني',
          body: const WebViewApp(
            url: kPaymentUrl,
          ),
        ),
      );
    } else if (select == 2) {
      emit(
        Email(
          title: 'الايميل الجامعي',
          body: const WebViewApp(
            url: kEmailUrl,
          ),
        ),
      );
    } else if (select == 3) {
      emit(
        Rigester(
          title: 'تسجيل المقررات',
          body: const WebViewApp(
            url: kRegisterUrl,
          ),
        ),
      );
    } else if (select == 4) {
      emit(Initial());
    }
  }
}
