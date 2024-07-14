// ignore_for_file: no_leading_underscores_for_local_identifiers, file_names

import 'package:dio/dio.dart';
import 'package:intl/intl.dart';
import 'package:weather_forecast/api_service/forecast/forecast_data.dart';

class ForeCastAPI {
  final Dio _dio = Dio();
  final String _url =
      'https://api.open-meteo.com/v1/forecast?latitude=52.52&longitude=13.41&hourly=temperature_2m';

  Future<List<HourlyForecast>> fetchForeCast() async {
    final _response = await _dio.get(_url);
    if (_response.statusCode == 200) {
      final data = _response.data['hourly'] as Map<String, dynamic>;
      final times = List<String>.from(data['time']);
      final temperatures = List<double>.from(data['temperature_2m']);

      List<HourlyForecast> hourlyForecasts = [];
      DateTime now = DateTime.now();
      String todayDate = DateFormat('yyyy-MM-dd').format(now);

      for (int i = 0; i < times.length; i++) {
        DateTime forecastDate = DateTime.parse(times[i]);
        String forecastDateString =
            DateFormat('yyyy-MM-dd').format(forecastDate);

        if (forecastDateString == todayDate) {
          hourlyForecasts.add(HourlyForecast(
            time: times[i],
            temperature: temperatures[i],
          ));
        }
      }

      return hourlyForecasts;
    } else {
      throw Exception('Failed to load forecast');
    }
  }
}
