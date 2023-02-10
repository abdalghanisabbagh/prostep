import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InfoWidget extends StatelessWidget {
  InfoWidget({
    super.key,
    required this.topLeft,
    required this.topRight,
    required this.bottem,
  });
  Widget topLeft, topRight, bottem;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              topLeft,
              topRight,
            ],
          ),
          SizedBox(
            width: double.infinity,
            child: bottem,
          )
        ],
      ),
    );
  }
}
