import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather_forecast/state_management/forecast_state.dart';
import 'package:weather_forecast/ui/forecast/container_info.dart';

class ForeCast extends ConsumerWidget {
  const ForeCast({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final refProvider = ref.watch(forecastProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Hourly ForeCast',
          style: TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.w600,
          ),
        ),
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
