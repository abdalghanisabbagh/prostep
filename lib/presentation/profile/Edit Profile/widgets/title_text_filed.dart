import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TitleTextFiled extends StatelessWidget {
  TitleTextFiled({
    super.key,
    required this.title,
    required this.text,
    this.onTap,
    this.readOnly = false,
    this.maxline,
  });
  String title, text;
  VoidCallback? onTap;
  bool? readOnly;
  int? maxline;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      readOnly: readOnly!,
      onTap: onTap,
      initialValue: text,
      style: const TextStyle(
        fontSize: 20,
        color: Colors.black,
      ),
      decoration: InputDecoration(
        enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey[300]!)),
        focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey[300]!)),
        labelText: title,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        labelStyle: const TextStyle(
          fontSize: 20,
          color: Colors.black,
          fontWeight: FontWeight.w700,
        ),
      ),
      maxLines: maxline ?? 1,
    );
  }
}
