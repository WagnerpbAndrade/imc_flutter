import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:imc_flutter/app/app_controller.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        navigatorKey: Modular.navigatorKey,
        title: 'IMC',
        theme: Modular.get<AppController>().appTheme,
        themeMode: Modular.get<AppController>().themeMode,
        initialRoute: '/',
        onGenerateRoute: Modular.generateRoute,
      ),
    );
  }
}
