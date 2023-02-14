import 'package:dio/dio.dart';
import 'package:weather_app/core/utils/constants.dart';

class ApiProvider {
  final Dio _dio = Dio();
  final apiKey = Constants.apiKeys1;

  callCurrentWeather(String cityName) async {
    var response = await _dio.get(
      '${Constants.baseUrl}/data/2.5/weather',
      queryParameters: {
        'q': cityName,
        'appid': apiKey,
        'units': 'metric',
      },
    );

    return response;
  }
}
