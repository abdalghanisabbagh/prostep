import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:prostep1/screens/resources/color_manger.dart';
import 'package:prostep1/text_widget.dart';

class GoogleButton extends StatelessWidget {
  const GoogleButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Material(
        borderRadius: BorderRadius.circular(12),
        color: ColorManger.loginbuttonbackgroundcolor,
        child: InkWell(
          onTap: () {},
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            SvgPicture.asset('assets/svg/Group.svg'),
            const SizedBox(
              width: 8,
            ),
            TextWidget(
                text: 'Log In with Gmail',
                color: ColorManger.loginbuttontextcolor,
                textSize: 18)
          ]),
        ),
      ),
    );
  }
}
