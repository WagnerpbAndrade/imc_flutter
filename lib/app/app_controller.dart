import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

import 'stores/app_theme_store.dart';

part 'app_controller.g.dart';

class AppController = _AppControllerBase with _$AppController;

abstract class _AppControllerBase with Store {
  final AppThemeStore appThemeStore;

  _AppControllerBase(this.appThemeStore) {
    appThemeStore.loadThemeData();
  }

  ThemeData get appTheme => appThemeStore.appTheme.getTheme();

  ThemeMode get themeMode => appThemeStore.themeMode;
}
