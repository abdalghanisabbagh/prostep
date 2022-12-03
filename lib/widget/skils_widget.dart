import 'package:flutter/material.dart';

class SkilsWidget extends StatelessWidget {
  const SkilsWidget({super.key, required this.skils});
  final String skils;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 25,
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color.fromARGB(255, 29, 64, 91),
          width: 1.5
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Center(child: Text(skils,style: const TextStyle(
        fontSize: 12
      ),)),
    );
  }
}
