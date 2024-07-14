import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather_forecast/api_service/current_weather/current_API_Service.dart';

final apiserviceProvider = Provider<CurrentAPI>((ref) => CurrentAPI());
// ignore: non_constant_identifier_names
final WeatherProvider = FutureProvider((ref) {
  final apiService = ref.watch(apiserviceProvider);
  return apiService.fetchWeather();
});
