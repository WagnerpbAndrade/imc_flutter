import 'package:flutter/material.dart';

abstract class ISharedRepositoryInterface {
  Future<ThemeMode> readThemeMode();
  Future<bool> saveThemeMode(ThemeMode themeMode);
}
