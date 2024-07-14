import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:intl/intl.dart';
import 'package:weather_forecast/state_management/current_tem_state.dart';
//import 'package:weather_forecast/ui/current_weather/cur_forecast.dart';
import 'package:weather_forecast/ui/current_weather/weather_info.dart';
import 'package:weather_forecast/ui/forecast/nexthome.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final weatherP = ref.watch(WeatherProvider);
    DateTime now = DateTime.now();
    String formattedDate = DateFormat('hh:mm a, EEEE, d MMMM').format(now);
    return Scaffold(
        body: weatherP.when(
      data: (data) {
        return Container(
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xFF512DAB),
                  Color(0xFFB39DBB),
                ]),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Center(
                  child: Text(
                    "Mostly Cloudy",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                ),
                const Icon(
                  Icons.wb_cloudy,
                  size: 160,
                  color: Colors.white,
                ),
                Text(
                  formattedDate,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 19,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  (data.temp - 273).toStringAsFixed(2).toString(),
                  style: const TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  height: 120,
                  width: 400,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: const Color.fromRGBO(60, 10, 115, 1),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      WeatherInfo(icon: Icons.umbrella, lebel: '22%Rain'),
                      WeatherInfo(icon: Icons.air, lebel: '12 km/h Wind'),
                      WeatherInfo(
                          icon: Icons.water_drop, lebel: '18% Humidity'),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Today',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const NextPage(),
                            ),
                          );
                        },
                        child: const Text(
                          'Next 7 Day>',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),
        );
      },
      loading: () {
        return const Center(child: CircularProgressIndicator());
      },
      error: (error, stackTrace) {
        return const Text('data');
      },
    ));
  }
}