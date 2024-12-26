import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'settings_state.dart';

class SettingsCubit extends Cubit<SettingsState> {
  SettingsCubit() : super(SettingsInitial());
  final isArabic = true;
  String get language => isArabic ? 'ar' : 'en';
}
