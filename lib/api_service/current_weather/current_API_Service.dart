// ignore_for_file: file_names
import 'package:dio/dio.dart';
import 'package:weather_forecast/api_service/current_weather/data_class.dart';

class CurrentAPI {
  final Dio dio = Dio();
  final String url =
      'https://api.openweathermap.org/data/2.5/weather?lat=44.34&lon=10.99&appid=8b007a0f273c00ea2c5645e7fc0cf0e3';

  Future<CurrentWeatherData> fetchWeather() async {
    final response = await dio.get(url);

    if (response.statusCode == 200) {
      return CurrentWeatherData.fromMap(response.data);
    } else {
      throw Exception('faild to load weather data');
    }
  }
}
