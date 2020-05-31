import 'package:flutter/material.dart';
import 'package:imc_flutter/app/interfaces/app_theme_interface.dart';

class AppThemeDark implements IAppTheme {
  @override
  ThemeData getTheme() {
    return ThemeData.dark();
  }

  @override
  String themeToString() {
    return ThemeMode.dark.toString();
  }
}
