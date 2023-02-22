import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {
  BottomNav({super.key, required this.onTap});
  VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 140, vertical: 20),
        height: 35,
        decoration: BoxDecoration(
            color: const Color(0xff1D405B),
            borderRadius: BorderRadius.circular(25)),
        child: const Center(
          child: Text(
            'Save',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
