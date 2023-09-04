import 'package:faculty_of_special_education/cubit/navigation_cubit.dart';
import 'package:faculty_of_special_education/helper/helper_widget/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomBottomBar extends StatelessWidget {
  const CustomBottomBar({super.key, required this.currentIndex});
  final int currentIndex;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationCubit, NavigationState>(
      builder: (context, state) {
        return BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          iconSize: 24,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black,
          currentIndex: currentIndex,
          onTap: (select) {
            BlocProvider.of<NavigationCubit>(context).navigate(select);
          },
          items: const [
            BottomNavigationBarItem(
              activeIcon: Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: CustomText(
                  text: 'الكتاب الالكتروني',
                  color: Colors.black,
                ),
              ),
              label: '',
              icon: Icon(
                Icons.menu_book_outlined,
              ),
            ),
            BottomNavigationBarItem(
              activeIcon: Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: CustomText(
                  text: 'التحصيل الالكتروني',
                  color: Colors.black,
                ),
              ),
              label: '',
              icon: Icon(
                Icons.credit_card,
              ),
            ),
            BottomNavigationBarItem(
              activeIcon: Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: CustomText(
                  text: 'الايميل الجامعي',
                  color: Colors.black,
                ),
              ),
              label: '',
              icon: Icon(
                Icons.email_outlined,
              ),
            ),
            BottomNavigationBarItem(
              activeIcon: Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: CustomText(
                  text: 'تسجيل المقررات',
                  color: Colors.black,
                ),
              ),
              label: '',
              icon: Icon(
                Icons.checklist,
              ),
            ),
          ],
        );
      },
    );
  }
}
