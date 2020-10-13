import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'vaccine_controller.g.dart';

@Injectable()
class VaccineController = _VaccineControllerBase with _$VaccineController;

abstract class _VaccineControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
