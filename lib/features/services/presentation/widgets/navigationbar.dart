import 'package:faculty_of_special_education/core/widgets/custom_text.dart';
import 'package:faculty_of_special_education/features/services/presentation/manager/navigation_cubit.dart';
import 'package:faculty_of_special_education/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomBottomBar extends StatelessWidget {
  const CustomBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    int currentIndex = BlocProvider.of<ServicesCubit>(context).currentIndex;
    return BottomNavigationBar(
      backgroundColor: Colors.blue,
      type: BottomNavigationBarType.shifting,
      iconSize: 24,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.black,
      currentIndex: currentIndex,
      onTap: (select) {
        BlocProvider.of<ServicesCubit>(context).navigate(currentIndex: select);
      },
      items: [
        BottomNavigationBarItem(
          activeIcon: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: CustomText(
              text: AppLocalization.of(context).book,
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
              text: AppLocalization.of(context).payment,
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
              text: AppLocalization.of(context).email,
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
              text: AppLocalization.of(context).register,
              color: Colors.black,
            ),
          ),
          label: '',
          icon: const Icon(
            Icons.checklist,
          ),
        ),
        BottomNavigationBarItem(
          activeIcon: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: CustomText(
              text: AppLocalization.of(context).settings,
              color: Colors.black,
            ),
          ),
          label: '',
          icon: const Icon(
            Icons.settings_outlined,
          ),
        ),
      ],
    );
  }
}
