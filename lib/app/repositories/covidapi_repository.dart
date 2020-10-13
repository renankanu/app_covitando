import 'package:appmodularmobx/app/models/world_model.dart';
import 'package:dio/dio.dart';

class CovidApiRepository {
  final Dio _dio = Dio();
  String baseUrl = 'https://disease.sh/v3/covid-19';

  Future<WorldModel> getInfoWorld() async {
    try {
      Response response = await _dio.get('$baseUrl/all');
      return WorldModel.fromJson(response.data);
    } on DioError catch (e) {
      throw Exception(e);
    }
  }
}
