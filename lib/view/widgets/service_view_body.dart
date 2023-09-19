import 'package:faculty_of_special_education/cubit/navigation_cubit.dart';
import 'package:faculty_of_special_education/helper/helper_widget/custom_text.dart';
import 'package:faculty_of_special_education/helper/helper_widget/webview.dart';
import 'package:faculty_of_special_education/view/widgets/chrome_view_button.dart';
import 'package:faculty_of_special_education/view/widgets/navigationbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ServiceViewBody extends StatelessWidget {
  const ServiceViewBody({super.key, required this.title, required this.url});
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
              ChromeViewButton(url: url),
            ],
          ),
          body: WebViewApp(url: url),
        );
      },
    );
  }
}
