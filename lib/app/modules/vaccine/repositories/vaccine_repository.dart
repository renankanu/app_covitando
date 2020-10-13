import 'package:flutter_modular/flutter_modular.dart';
import 'package:dio/native_imp.dart';

part 'vaccine_repository.g.dart';

@Injectable()
class VaccineRepository extends Disposable {
  final DioForNative client;
  String baseUrl = 'https://disease.sh/v3/covid-19';

  VaccineRepository(this.client);

  Future getVaccines() async {
    final response = await client.get('$baseUrl/vaccine');
    return response.data;
  }

  @override
  void dispose() {}
}
