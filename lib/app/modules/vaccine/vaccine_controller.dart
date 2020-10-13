import 'package:appmodularmobx/app/models/vaccine_model.dart';
import 'package:appmodularmobx/app/modules/vaccine/repositories/vaccine_repository.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'vaccine_controller.g.dart';

@Injectable()
class VaccineController = _VaccineControllerBase with _$VaccineController;

abstract class _VaccineControllerBase with Store {
  final api = Modular.get<VaccineRepository>();

  _VaccineControllerBase() {
    getAllVaccines();
  }

  @observable
  VaccineModel vaccineModel;

  @action
  getAllVaccines() async {
    vaccineModel = await api.getVaccines();
  }
}
