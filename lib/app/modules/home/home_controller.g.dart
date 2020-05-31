// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  final _$isDarkAtom = Atom(name: '_HomeControllerBase.isDark');

  @override
  bool get isDark {
    _$isDarkAtom.reportRead();
    return super.isDark;
  }

  @override
  set isDark(bool value) {
    _$isDarkAtom.reportWrite(value, super.isDark, () {
      super.isDark = value;
    });
  }

  final _$_HomeControllerBaseActionController =
      ActionController(name: '_HomeControllerBase');

  @override
  dynamic changeTheme(bool value) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.changeTheme');
    try {
      return super.changeTheme(value);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isDark: ${isDark}
    ''';
  }
}
