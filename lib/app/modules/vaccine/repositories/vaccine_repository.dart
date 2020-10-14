import 'package:appmodularmobx/app/models/vaccine_model.dart';
import 'package:dio/dio.dart';
import 'package:dio/native_imp.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'vaccine_repository.g.dart';

@Injectable()
class VaccineRepository extends Disposable {
  final DioForNative client;
  String baseUrl = 'https://disease.sh/v3/covid-19';

  VaccineRepository(this.client);

  Future<VaccineModel> getVaccines() async {
    try {
      final response = await client.get('$baseUrl/vaccine');
      return VaccineModel.fromJson(response.data);
    } on DioError catch (e) {
      throw Exception(e);
    }
  }

  @override
  void dispose() {}
}
