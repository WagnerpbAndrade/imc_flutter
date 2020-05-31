import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:imc_flutter/app/core/theme/app_theme_factory.dart';
import 'package:imc_flutter/app/interfaces/app_theme_interface.dart';
import 'package:imc_flutter/app/interfaces/shared_repository_interface.dart';
import 'package:imc_flutter/app/repositories/shared_repository.dart';
import 'package:mobx/mobx.dart';
part 'app_theme_store.g.dart';

class AppThemeStore = _AppThemeStoreBase with _$AppThemeStore;

abstract class _AppThemeStoreBase with Store {
  SharedRepository sharedRepository = Modular.get<ISharedRepositoryInterface>();

  @observable
  IAppTheme appTheme = AppThemeFactory.getTheme(ThemeMode.light);

  @observable
  ThemeMode themeMode = ThemeMode.light;

  @observable
  bool isLight = true;

  @action
  setIsLight(bool value) {
    isLight = value;
  }

  @action
  Future<void> loadThemeData() async {
    await sharedRepository.readThemeMode().then(
      (mode) {
        themeMode = mode;
        appTheme = AppThemeFactory.getTheme(mode);
        setThemeData(mode, saveShared: false);
      },
    );
  }

  @action
  Future<void> setThemeData(ThemeMode themeMode,
      {bool saveShared = true}) async {
    if (themeMode == ThemeMode.dark) {
      setIsLight(false);
    } else {
      setIsLight(true);
    }

    appTheme = AppThemeFactory.getTheme(themeMode);
    if (saveShared) {
      await sharedRepository.saveThemeMode(themeMode);
    }
  }
}
