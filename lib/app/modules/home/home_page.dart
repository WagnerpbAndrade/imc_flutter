import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:imc_flutter/app/app_controller.dart';
import 'package:imc_flutter/app/core/consts/assets_const.dart';
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
          padding: const EdgeInsets.symmetric(
            horizontal: 30,
          ),
          child: Column(
            children: <Widget>[
              Form(
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      controller: controller.tWeight,
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        labelText: "Digite seu peso",
                      ),
                    ),
                    TextFormField(
                      controller: controller.tHeight,
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        labelText: "Digite sua altura",
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: SizeConfig.safeBlockVertical * 3,
              ),
              SizedBox(
                height: SizeConfig.safeBlockVertical * 3,
              ),
              RaisedButton(
                child: Text("Calcular"),
                onPressed: () {
                  controller.calculateImc();
                },
              ),
              SizedBox(
                height: SizeConfig.safeBlockVertical * 3,
              ),
              Observer(
                builder: (context) {
                  return Text(controller.result.toString());
                },
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor,
        child: Icon(
          Icons.refresh,
          color: Theme.of(context).accentColor,
        ),
        onPressed: () {},
      ),
    );
  }
}
