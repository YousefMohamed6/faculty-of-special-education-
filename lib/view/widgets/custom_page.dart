import 'package:faculty_of_special_education/cubit/navigation_cubit.dart';
import 'package:faculty_of_special_education/helper/helper_widget/custom_text.dart';
import 'package:faculty_of_special_education/helper/helper_widget/webview.dart';
import 'package:faculty_of_special_education/view/widgets/navigationbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomPageView extends StatelessWidget {
  const CustomPageView({super.key, required this.title, required this.url});
  final String title;
  final String url;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomBar(
          currentIndex: BlocProvider.of<NavigationCubit>(context).currentIndex),
      appBar: AppBar(
        title: CustomText(
          text: title,
        ),
        centerTitle: true,
      ),
      body: WebView(url: url),
    );
  }
}
