import 'package:flutter/material.dart';

class PepleRecommended extends StatelessWidget {
  const PepleRecommended({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Flexible(
                child: CircleAvatar(
              maxRadius: 30,
              backgroundImage: NetworkImage(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRna0Yn_AMMEcnVGFuHNG0-UENJAFjsGKO8RQ&usqp=CAU"),
            )),
            const SizedBox(
              width: 10,
            ),
            Flexible(
              flex: 4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Abdo Sabbagh",
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                  ),
                  const Text(
                    "Front-End developer",
                    style: TextStyle(color: Color(0xff707070)),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    "Farah is one of the best care giver i have worked with ! ",
                    style: TextStyle(color: Color(0xff707070)),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 2, horizontal: 15),
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xff1D405B), width: 2),
                        borderRadius: BorderRadius.circular(25)),
                    child: Row(mainAxisSize: MainAxisSize.min, children: const [
                      Text("Like"),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.headset_rounded,
                      )
                    ]),
                  ),
                ],
              ),
            )
          ]),
    );
  }
}
