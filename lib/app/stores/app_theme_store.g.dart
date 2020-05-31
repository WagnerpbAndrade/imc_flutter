// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_theme_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AppThemeStore on _AppThemeStoreBase, Store {
  final _$appThemeAtom = Atom(name: '_AppThemeStoreBase.appTheme');

  @override
  IAppTheme get appTheme {
    _$appThemeAtom.reportRead();
    return super.appTheme;
  }

  @override
  set appTheme(IAppTheme value) {
    _$appThemeAtom.reportWrite(value, super.appTheme, () {
      super.appTheme = value;
    });
  }

  final _$themeModeAtom = Atom(name: '_AppThemeStoreBase.themeMode');

  @override
  ThemeMode get themeMode {
    _$themeModeAtom.reportRead();
    return super.themeMode;
  }

  @override
  set themeMode(ThemeMode value) {
    _$themeModeAtom.reportWrite(value, super.themeMode, () {
      super.themeMode = value;
    });
  }

  final _$isLightAtom = Atom(name: '_AppThemeStoreBase.isLight');

  @override
  bool get isLight {
    _$isLightAtom.reportRead();
    return super.isLight;
  }

  @override
  set isLight(bool value) {
    _$isLightAtom.reportWrite(value, super.isLight, () {
      super.isLight = value;
    });
  }

  final _$loadThemeDataAsyncAction =
      AsyncAction('_AppThemeStoreBase.loadThemeData');

  @override
  Future<void> loadThemeData() {
    return _$loadThemeDataAsyncAction.run(() => super.loadThemeData());
  }

  final _$setThemeDataAsyncAction =
      AsyncAction('_AppThemeStoreBase.setThemeData');

  @override
  Future<void> setThemeData(ThemeMode themeMode, {bool saveShared = true}) {
    return _$setThemeDataAsyncAction
        .run(() => super.setThemeData(themeMode, saveShared: saveShared));
  }

  final _$_AppThemeStoreBaseActionController =
      ActionController(name: '_AppThemeStoreBase');

  @override
  dynamic setIsLight(bool value) {
    final _$actionInfo = _$_AppThemeStoreBaseActionController.startAction(
        name: '_AppThemeStoreBase.setIsLight');
    try {
      return super.setIsLight(value);
    } finally {
      _$_AppThemeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
appTheme: ${appTheme},
themeMode: ${themeMode},
isLight: ${isLight}
    ''';
  }
}
