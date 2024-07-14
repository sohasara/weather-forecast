import 'package:flutter/material.dart';

class ForeCast extends StatelessWidget {
  final String temp;
  final String time;
  final IconData icon;
  const ForeCast({
    super.key,
    required this.icon,
    required this.temp,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: 140,
      width: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: const Color.fromRGBO(60, 10, 115, 1),
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 5,
          ),
          Text(
            time,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
          const SizedBox(
            height: 7,
          ),
          Icon(
            icon,
            size: 35,
            color: Colors.white,
          ),
          const SizedBox(
            height: 9,
          ),
          Text(
            temp,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}
