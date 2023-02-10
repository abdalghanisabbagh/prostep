import 'package:flutter/material.dart';

class SkillsWidget extends StatelessWidget {
  SkillsWidget({super.key, required this.title});
  String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          border: Border.all(color: const Color(0xff1D405B), width: 2),
          borderRadius: BorderRadius.circular(25)),
      child: Row(children: [
        Text(title),
        const SizedBox(
          width: 5,
        ),
        const Icon(
          Icons.highlight_remove_rounded,
        )
      ]),
    );
  }
}
