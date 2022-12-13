import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ExperienceWidget extends StatelessWidget {
  const ExperienceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
        Flexible(
          child: Image.network(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQHNerWak8DVFUus4zv-BiAPx2IYJXdMMBvpKnkdOGzTQ&s"),
        ),
        SizedBox(
          width: 10,
        ),
        Flexible(
          flex: 4,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Junior flutter developer",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
              ),
              Text(
                "daPlus99 . Part-Timeta",
                style: TextStyle(color: Color(0xff707070)),
              ),
              Text(
                "Jul 2022 - Present ",
                style: TextStyle(color: Color(0xff707070)),
              ),
              Text(
                "Aleppo , Syria",
                style: TextStyle(color: Color(0xff707070)),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
