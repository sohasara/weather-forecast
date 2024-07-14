// ignore_for_file: must_be_immutable, file_names

import 'package:flutter/material.dart';

class WeatherInfo extends StatelessWidget {
  final IconData icon;
  final String lebel;
  const WeatherInfo({
    super.key,
    required this.icon,
    required this.lebel,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        Icon(
          icon,
          color: Colors.white,
          size: 30,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          lebel,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 15,
          ),
        ),
      ],
    );
  }
}
