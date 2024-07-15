import 'package:flutter/material.dart';

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
