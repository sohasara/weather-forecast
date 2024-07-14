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
      height: 165,
      width: 160,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: const Color.fromRGBO(60, 10, 115, 1),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 15.0,
              top: 18,
            ),
            child: Text(
              text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
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
              fontWeight: FontWeight.w900,
            ),
          )
        ],
      ),
    );
  }
}
