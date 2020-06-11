import 'package:imc_flutter/app/app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:imc_flutter/app/app_widget.dart';
import 'package:imc_flutter/app/core/consts/routers_consts.dart';
import 'package:imc_flutter/app/modules/home/home_module.dart';
import 'package:imc_flutter/app/stores/app_theme_store.dart';

import 'interfaces/shared_repository_interface.dart';
import 'repositories/shared_repository.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        // Repositories
        Bind<ISharedRepositoryInterface>(
          (i) => SharedRepository(),
        ),
        Bind((i) => AppThemeStore()),
        Bind((i) => AppController(i.get<AppThemeStore>())),
      ];

  @override
  List<Router> get routers => [
        Router(RoutersConst.home, module: HomeModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
