import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather_forecast/state_management/forecast_state.dart';

class Hourly extends StatelessWidget {
  final String temp;
  final String time;
  const Hourly({super.key, required this.temp, required this.time});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // height: 285,
        // width: 250,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: const Color.fromRGBO(60, 10, 115, 1),
          borderRadius: BorderRadius.circular(25),
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Center(
              child: Text(
                time,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Icon(
              Icons.cloud,
              color: Colors.white,
              size: 80,
            ),
            const SizedBox(
              height: 15,
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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: refProvider.when(
          data: (data) {
            return GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 0.8,
              ),
              itemCount: data.length,
              itemBuilder: (context, index) {
                final hourly = data[index];
                return Padding(
                    padding: const EdgeInsets.only(
                      left: 10,
                      right: 8,
                      bottom: 8,
                    ),
                    child: Hourly(
                      temp: hourly.temperature.toString(),
                      time: hourly.time,
                    ));
              },
            );
          },
          error: (error, stack) {
            return Center(child: Text('Error: $error'));
          },
          loading: () {
            return const Center(child: CircularProgressIndicator());
          },
        ),
      ),
    );
  }
}
