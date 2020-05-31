import 'package:flutter/material.dart';
import 'package:imc_flutter/app/core/consts/colors_consts.dart';
import 'package:imc_flutter/app/interfaces/app_theme_interface.dart';

class AppThemeLight implements IAppTheme {
  @override
  ThemeData getTheme() {
    return ThemeData(
      fontFamily: 'Poppins',
      scaffoldBackgroundColor: Colors.white,
      primaryColor: ColorsConst.primaryColor,
      accentColor: ColorsConst.accentColor,
      buttonColor: ColorsConst.primaryColor,
      buttonTheme: ButtonThemeData(
        height: 50,
        minWidth: double.infinity,
        buttonColor: ColorsConst.primaryColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        textTheme: ButtonTextTheme.primary,
      ),
    );
  }

  @override
  String themeToString() {
    return ThemeMode.light.toString();
  }
}
