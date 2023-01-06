import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ContactView extends StatelessWidget {
  const ContactView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSd9VwEW5DYn4Z9HCIEY_XpAsV1vtoJxOsHzQ&usqp=CAU"),
        ),
        const SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "Abdo Sabbagh",
              style: TextStyle(
                  color: Color(0xff1D405B),
                  fontWeight: FontWeight.bold,
                  fontSize: 17),
            ),
            SizedBox(
              height: 7,
            ),
            Text(
              "It’s time for the flutter class,learn about firebase ",
              style: TextStyle(color: Colors.grey),
              maxLines: 2,
            )
          ],
        )
      ],
    );
  }
}
