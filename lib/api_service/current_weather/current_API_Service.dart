// ignore_for_file: file_names, no_leading_underscores_for_local_identifiers
import 'package:dio/dio.dart';
import 'package:weather_forecast/api_service/current_weather/data_class.dart';

class CurrentAPI {
  final Dio dio = Dio();
  final String _url =
      'https://api.openweathermap.org/data/2.5/weather?lat=44.34&lon=10.99&appid=8b007a0f273c00ea2c5645e7fc0cf0e3';

  Future<CurrentWeatherData> fetchWeather() async {
    final _response = await dio.get(_url);

    if (_response.statusCode == 200) {
      return CurrentWeatherData.fromMap(_response.data);
    } else {
      throw Exception('faild to load weather data');
    }
  }
}
