import 'package:faculty_of_special_education/features/services/cubit/navigation_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LanguageButton extends StatelessWidget {
  const LanguageButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ServicesCubit, ServicesState>(builder: (context, state) {
      var isArabic = BlocProvider.of<ServicesCubit>(context).isArabic;
      return Align(
          alignment: isArabic ? Alignment.topRight : Alignment.topLeft,
          child: PopupMenuButton(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Row(
              children: [
                Text(
                  isArabic ? "اللغة" : "language",
                  style: TextStyle(
                    fontSize: MediaQuery.sizeOf(context).height * 0.024,
                    color: Colors.white,
                  ),
                ),
                const Icon(
                  Icons.arrow_drop_down_sharp,
                  size: 32,
                  color: Colors.white,
                )
              ],
            ),
            onSelected: (value) {
              switch (value) {
                case "ar":
                  BlocProvider.of<ServicesCubit>(context)
                      .changeLanguage(isArabic: true);
                  break;
                case "en":
                  BlocProvider.of<ServicesCubit>(context)
                      .changeLanguage(isArabic: false);
                  break;
              }
            },
            itemBuilder: (context) {
              return [
                const PopupMenuItem(
                  value: "en",
                  child: Text("English"),
                ),
                const PopupMenuItem(
                  value: "ar",
                  child: Text("العربية"),
                ),
              ];
            },
          ));
    });
  }
}
