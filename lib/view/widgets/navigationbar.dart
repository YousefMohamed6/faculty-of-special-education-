import 'package:faculty_of_special_education/cubit/navigation_cubit.dart';
import 'package:faculty_of_special_education/generated/l10n.dart';
import 'package:faculty_of_special_education/helper/helper_widget/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomBottomBar extends StatelessWidget {
  const CustomBottomBar({super.key, required this.currentIndex});
  final int currentIndex;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.shifting,
      iconSize: 24,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.black,
      currentIndex: currentIndex,
      onTap: (select) {
        BlocProvider.of<NavigationCubit>(context).navigate(select);
      },
      items: [
        BottomNavigationBarItem(
          activeIcon: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: CustomText(
              text: S.of(context).book,
              color: Colors.black,
            ),
          ),
          label: '',
          icon: const Icon(
            Icons.menu_book_outlined,
          ),
        ),
        BottomNavigationBarItem(
          activeIcon: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: CustomText(
              text: S.of(context).payment,
              color: Colors.black,
            ),
          ),
          label: '',
          icon: const Icon(
            Icons.credit_card,
          ),
        ),
        BottomNavigationBarItem(
          activeIcon: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: CustomText(
              text: S.of(context).email,
              color: Colors.black,
            ),
          ),
          label: '',
          icon: const Icon(
            Icons.email_outlined,
          ),
        ),
        BottomNavigationBarItem(
          activeIcon: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: CustomText(
              text: S.of(context).register,
              color: Colors.black,
            ),
          ),
          label: '',
          icon: const Icon(
            Icons.checklist,
          ),
        ),
      ],
    );
  }
}
