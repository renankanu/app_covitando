import 'package:appmodularmobx/app/models/world_model.dart';
import 'package:dio/dio.dart';

class CovidApiRepository {
  final Dio _dio = Dio();
  String baseUrl = 'https://disease.sh/v3/covid-19';

  Future<WorldModel> getInfoWorld() async {
    Response response = await _dio.get('${baseUrl}/all');
    if (response.statusCode == 200) {
      return WorldModel.fromJson(response.data);
    }
    if (response.statusCode != 200) {
      throw Exception();
    }
  }
}
