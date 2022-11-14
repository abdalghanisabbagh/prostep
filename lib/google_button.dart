import 'package:flutter/material.dart';
import 'package:prostep1/text_widget.dart';

class GoogleButton extends StatelessWidget {
  const GoogleButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: Material(
        borderRadius: BorderRadius.circular(15),
        color: const Color.fromARGB(255, 134, 123, 139),
        child: InkWell(
          onTap: () {},
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            const Icon(
              Icons.alternate_email_sharp,
              color: Colors.white,
            ),
            const SizedBox(
              width: 8,
            ),
            TextWidget(
                text: 'Log In with Gmail', color: Colors.white, textSize: 18)
          ]),
        ),
      ),
    );
  }
}
