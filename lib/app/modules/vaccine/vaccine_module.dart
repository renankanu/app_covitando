import 'vaccine_controller.dart';
import 'package:dio/dio.dart';
import 'repositories/vaccine_repository.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'vaccine_page.dart';

class VaccineModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $VaccineController,
        $VaccineRepository,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => VaccinePage()),
      ];

  static Inject get to => Inject<VaccineModule>.of();
}
