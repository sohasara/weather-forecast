import 'package:flutter/material.dart';

class WeeklyFor extends StatelessWidget {
  final String week;
  final String type;
  final String temp;

  final IconData icon;
  const WeeklyFor({
    super.key,
    required this.temp,
    required this.type,
    required this.week,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 20,
        ),
        Text(
          week,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        const SizedBox(
          width: 60,
        ),
        Icon(
          icon,
          size: 40,
          color: Colors.white,
        ),
        const SizedBox(
          width: 20,
        ),
        Text(
          type,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
        const SizedBox(
          width: 85,
        ),
        Text(
          temp,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        const SizedBox(
          width: 20,
        ),
      ],
    );
  }
}
