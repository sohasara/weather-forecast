import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather_forecast/api_service/forecast/forecastApi.dart';

import 'package:weather_forecast/api_service/forecast/forecast_data.dart';

final apiServiceProvider = Provider<ForeCastAPI>((ref) {
  return ForeCastAPI();
});

final forecastProvider = FutureProvider<List<HourlyForecast>>((ref) async {
  final apiProvider = ref.watch(apiServiceProvider);
  return await apiProvider.fetchForeCast();
});
