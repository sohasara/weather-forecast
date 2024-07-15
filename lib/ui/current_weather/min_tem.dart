import 'package:flutter/material.dart';

class TempInfo extends StatelessWidget {
  final String temp;
  final String text;

  const TempInfo({
    super.key,
    required this.temp,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      width: 155,
      padding: const EdgeInsets.only(
        top: 28,
      ),
      decoration: BoxDecoration(
        color: const Color.fromRGBO(60, 10, 115, 1),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: [
          Center(
            child: Text(
              text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ),
          const Center(
            child: Text(
              'Temperature',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            temp,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
