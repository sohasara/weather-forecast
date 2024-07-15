import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather_forecast/state_management/forecast_state.dart';

class Hourly extends StatelessWidget {
  final String temp;
  final String time;
  const Hourly({super.key, required this.temp, required this.time});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 165,
      width: 150,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: const Color.fromRGBO(60, 10, 115, 1),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: [
          Center(
            child: Text(
              time,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ),
          const Icon(
            Icons.cloud,
            color: Colors.white,
            size: 70,
          ),
          Center(
            child: Text(
              '$temp °C',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 25,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ForeCast extends ConsumerWidget {
  const ForeCast({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final refProvider = ref.watch(forecastProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hourly ForeCast'),
        centerTitle: true,
      ),
      body: refProvider.when(
        data: (data) {
          return ListView.builder(
            itemCount: data.length,
            itemBuilder: ((context, index) {
              final hourly = data[index];
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Hourly(
                  temp: hourly.temperature.toString(),
                  time: hourly.time.toString(),
                ),
              );
            }),
          );
        },
        error: (error, stack) {
          return Center(child: Text('Error: $error'));
        },
        loading: () {
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
