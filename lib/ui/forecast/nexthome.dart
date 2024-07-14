import 'package:flutter/material.dart';
import 'package:weather_forecast/ui/current_weather/weather_info.dart';
import 'package:weather_forecast/ui/forecast/weekly_fore.dart';

class NextPage extends StatelessWidget {
  const NextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFB39DBB),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFFB39DBB),
                Color(0xFFB39DBB),
                Color(0xFF512DAB),
                Color(0xFF512DAB),
              ]),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(
                  left: 15,
                  right: 15,
                  top: 8,
                  bottom: 10,
                ),
                height: 280,
                width: 390,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(60, 10, 115, 1),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: const Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.cloud,
                          color: Colors.white,
                          size: 150,
                        ),
                        Column(
                          children: [
                            Text(
                              'Tommorow',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              '25°',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 32,
                              ),
                            ),
                            Text(
                              'Mostly Cloudy',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        WeatherInfo(
                          icon: Icons.umbrella,
                          lebel: '22%Rain',
                        ),
                        WeatherInfo(
                          icon: Icons.air,
                          lebel: '12 km/h Wind',
                        ),
                        WeatherInfo(
                          icon: Icons.water_drop,
                          lebel: '18% Humidity',
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const WeeklyFor(
                temp: '25°',
                type: 'Strom',
                week: ' SAT',
                icon: Icons.cloud,
              ),
              const SizedBox(
                height: 15,
              ),
              const WeeklyFor(
                temp: '25°',
                type: 'Strom',
                week: ' SUN',
                icon: Icons.cloud,
              ),
              const SizedBox(
                height: 15,
              ),
              const WeeklyFor(
                temp: '25°',
                type: 'Strom',
                week: 'MON',
                icon: Icons.cloud,
              ),
              const SizedBox(
                height: 15,
              ),
              const WeeklyFor(
                temp: '25°',
                type: 'Strom',
                week: '  TUE',
                icon: Icons.cloud,
              ),
              const SizedBox(
                height: 15,
              ),
              const WeeklyFor(
                temp: '25°',
                type: 'Strom',
                week: 'WEN',
                icon: Icons.cloud,
              ),
              const SizedBox(
                height: 15,
              ),
              const WeeklyFor(
                temp: '25°',
                type: 'Strom',
                week: '  THU',
                icon: Icons.cloud,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
