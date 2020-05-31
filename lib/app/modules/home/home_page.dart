import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:imc_flutter/app/app_controller.dart';
import 'package:imc_flutter/app/core/utils/size_config.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  //use 'controller' variable to access controller

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final appController = Modular.get<AppController>();
    SizeConfig().init(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Calculadora de I M C"),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.lightbulb_outline),
            onPressed: () => appController.appThemeStore.isLight
                ? appController.appThemeStore.setThemeData(ThemeMode.dark)
                : appController.appThemeStore.setThemeData(ThemeMode.light),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              TextFormField(),
              TextFormField(),
            ],
          ),
        ),
      ),
    );
  }
}
