import 'package:appmodularmobx/app/modules/vaccine/vaccine_module.dart';
import 'package:appmodularmobx/app/repositories/covidapi_repository.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:appmodularmobx/app/app_widget.dart';
import 'package:appmodularmobx/app/modules/home/home_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => CovidApiRepository()),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, module: HomeModule()),
        ModularRouter('/vaccine', module: VaccineModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
