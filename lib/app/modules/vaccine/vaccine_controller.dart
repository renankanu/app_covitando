import 'package:appmodularmobx/app/modules/vaccine/repositories/vaccine_repository.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'vaccine_controller.g.dart';

@Injectable()
class VaccineController = _VaccineControllerBase with _$VaccineController;

abstract class _VaccineControllerBase with Store {
  final VaccineRepository repository;
  _VaccineControllerBase(this.repository);
  @observable
  int value = 0;

  @action
  void increment() {
    repository.getVaccines();
  }
}
