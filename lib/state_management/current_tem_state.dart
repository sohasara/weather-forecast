import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather_forecast/api_service/current_weather/current_API_Service.dart';

final apiserviceProvider = Provider<CurrentAPI>((ref) => CurrentAPI());
final WeatherProvider = FutureProvider((ref) {
  final apiService = ref.watch(apiserviceProvider);
  return apiService.fetchWeather();
});
 // const SingleChildScrollView(
                //   scrollDirection: Axis.horizontal,
                //   child: Padding(
                //     padding: EdgeInsets.all(8.0),
                //     child: Row(
                //       children: [
                //         ForeCast(
                //           time: '7 AM',
                //           icon: Icons.cloud,
                //           temp: '25°',
                //         ),
                //         SizedBox(
                //           width: 20,
                //         ),
                //         ForeCast(
                //           time: '9 AM',
                //           icon: Icons.cloud,
                //           temp: '25°',
                //         ),
                //         SizedBox(
                //           width: 20,
                //         ),
                //         ForeCast(
                //           time: '11 AM',
                //           icon: Icons.cloud,
                //           temp: '25°',
                //         ),
                //         SizedBox(
                //           width: 20,
                //         ),
                //         ForeCast(
                //           time: '1 PM',
                //           icon: Icons.cloud,
                //           temp: '25°',
                //         ),
                //         SizedBox(
                //           width: 20,
                //         ),
                //         ForeCast(
                //           time: '3 PM',
                //           icon: Icons.cloud,
                //           temp: '25°',
                //         ),
                //         SizedBox(
                //           width: 20,
                //         ),
                //         ForeCast(
                //           time: '5 PM',
                //           icon: Icons.cloud,
                //           temp: '25°',
                //         ),
                //         SizedBox(
                //           width: 20,
                //         ),
                //         ForeCast(
                //           time: '7 PM',
                //           icon: Icons.cloud,
                //           temp: '25°',
                //         ),
                //         SizedBox(
                //           width: 20,
                //         ),
                //         ForeCast(
                //           time: '9 PM',
                //           icon: Icons.cloud,
                //           temp: '25°',
                //         ),
                //         SizedBox(
                //           width: 20,
                //         ),
                //         ForeCast(
                //           time: '11 PM',
                //           icon: Icons.cloud,
                //           temp: '25°',
                //         ),
                //         SizedBox(
                //           width: 20,
                //         ),
                //         ForeCast(
                //           time: '1 AM',
                //           icon: Icons.cloud,
                //           temp: '25°',
                //         ),
                //       ],
                //     ),
                //   ),
                // ),