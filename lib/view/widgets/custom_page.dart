import 'package:faculty_of_special_education/cubit/navigation_cubit.dart';
import 'package:faculty_of_special_education/helper/helper_function/url_launcher.dart';
import 'package:faculty_of_special_education/helper/helper_widget/custom_icon_button.dart';
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
    return BlocBuilder<NavigationCubit, NavigationState>(
      builder: (context, state) {
        return Scaffold(
          bottomNavigationBar: CustomBottomBar(
              currentIndex:
                  BlocProvider.of<NavigationCubit>(context).currentIndex),
          appBar: AppBar(
            leading: BackButton(
              color: Colors.white,
              onPressed: () {
                BlocProvider.of<NavigationCubit>(context).navigate(4);
              },
            ),
            title: CustomText(
              text: title,
            ),
            centerTitle: true,
            actions: [
              CustomIconButton(
                onPressed: () async {
                  await urlLauncher(url: url);
                },
                icon: const Icon(
                  Icons.language,
                  size: 32,
                ),
              )
            ],
          ),
          body: WebViewApp(url: url),
        );
      },
    );
  }
}
