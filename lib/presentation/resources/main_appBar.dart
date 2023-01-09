import 'package:flutter/material.dart';

class mainAppBar extends StatelessWidget {
  mainAppBar(
      {super.key, required this.text, required this.icon, required this.ontap});
  String text;
  Icon icon;
  VoidCallback ontap;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: icon,
        onPressed: ontap,
      ),
      centerTitle: false,
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Text(
        text,
        style: const TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 18,
          color: Color(
            0xff1D405B,
          ),
        ),
      ),
    );
  }
}
