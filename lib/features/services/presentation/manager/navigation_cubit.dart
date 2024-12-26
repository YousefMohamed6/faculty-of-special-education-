import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:webview_flutter/webview_flutter.dart';

part 'navigation_state.dart';

class ServicesCubit extends Cubit<ServicesState> {
  ServicesCubit() : super(Initial());
  WebViewController webViewController = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..setBackgroundColor(const Color(0xffffffff))
    ..setNavigationDelegate(
      NavigationDelegate(
        onProgress: (int progress) {},
        onPageStarted: (String url) {},
        onPageFinished: (String url) {},
        onWebResourceError: (WebResourceError error) {},
        onNavigationRequest: (NavigationRequest request) {
          if (request.url.startsWith('https://flutter.dev')) {
            return NavigationDecision.prevent;
          }
          return NavigationDecision.navigate;
        },
      ),
    );
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
    } else if (this.currentIndex == 4) {
      emit(SettingsService());
    }
  }
}
