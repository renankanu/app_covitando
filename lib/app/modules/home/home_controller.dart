import 'package:appmodularmobx/app/models/world_model.dart';
import 'package:appmodularmobx/app/repositories/covidapi_repository.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'home_controller.g.dart';

@Injectable()
class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  final api = Modular.get<CovidApiRepository>();

  _HomeControllerBase() {
    getInfoMundo();
  }

  @observable
  WorldModel worldModel;

  @observable
  bool isLoading = false;

  @action
  getInfoMundo() async {
    isLoading = true;
    worldModel = await api.getInfoWorld();
    isLoading = false;
  }
}
