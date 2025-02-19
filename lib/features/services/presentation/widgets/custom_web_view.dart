import 'package:faculty_of_special_education/core/widgets/custom_text.dart';
import 'package:faculty_of_special_education/core/widgets/webview.dart';
import 'package:faculty_of_special_education/features/home/presentation/widgets/navigate_to_browser_button.dart';
import 'package:faculty_of_special_education/features/services/presentation/widgets/navigationbar.dart';
import 'package:flutter/material.dart';

class CustomWebView extends StatelessWidget {
  const CustomWebView({
    super.key,
    required this.title,
    required this.url,
  });
  final String title;
  final String url;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: CustomText(
            text: title,
            fontSize: MediaQuery.sizeOf(context).height * 0.024,
          ),
          centerTitle: true,
          actions: [
            NavigateToBrowerButton(
              url: url,
              icon: Icons.open_in_browser_outlined,
            ),
          ],
        ),
        body: CustomWebViewWidget(url: url),
        bottomNavigationBar: const CustomBottomBar(),
      ),
    );
  }
}
