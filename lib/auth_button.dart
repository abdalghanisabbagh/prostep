import 'package:flutter/material.dart';
import 'package:prostep1/screens/resources/color_manger.dart';
import 'package:prostep1/text_widget.dart';

class AuthButton extends StatelessWidget {
  const AuthButton({
    Key? key,
    required this.fct,
    required this.buttonText,
  }) : super(key: key);
  final Function fct;
  final String buttonText;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 100,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: ColorManger.loginbuttonbackgroundcolor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7)),
            ),
            onPressed: () {
              fct();
            },
            child: TextWidget(
              text: buttonText,
              textSize: 18,
              color: ColorManger.loginbuttontextcolor,
            )),
      ),
    );
  }
}
