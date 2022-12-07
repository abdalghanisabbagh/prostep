import 'package:flutter/material.dart';
import 'package:prostep1/widget/skils_widget.dart';
import 'package:prostep1/widget/workexperience_widget.dart';

class HomeTeacher extends StatefulWidget {
  const HomeTeacher({super.key});

  @override
  State<HomeTeacher> createState() => _HomeTeacherState();
}

class _HomeTeacherState extends State<HomeTeacher> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 20.0, top: 25),
              child: Text(
                'Education:',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Padding(
              padding: EdgeInsets.only(
                left: 20.0,
              ),
              child: Text(
                'Attended Aleppo University , Faculty of Informatics Engineering',
                style: TextStyle(
                  color: Color.fromARGB(255, 97, 97, 97),
                  fontSize: 14,
                ),
              ),
            ),
            const Divider(
              height: 25,
              color: Color.fromARGB(25, 42, 86, 121),
              thickness: 5,
            ),
            const Padding(
              padding: EdgeInsets.only(
                left: 20.0,
              ),
              child: Text(
                'About hasan:',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Padding(
              padding: EdgeInsets.only(
                left: 20.0,
              ),
              child: Text(
                'PHP Web Developer using frameworks ( laravel and codigniter ) and native php experience 6 years in web applications',
                style: TextStyle(
                  color: Color.fromARGB(255, 97, 97, 97),
                  fontSize: 14,
                ),
              ),
            ),
            const Divider(
              height: 25,
              color: Color.fromARGB(25, 42, 86, 121),
              thickness: 5,
            ),
            const Padding(
              padding: EdgeInsets.only(
                left: 20.0,
              ),
              child: Text(
                'Skills:',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 7,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: SizedBox(
                width: double.maxFinite,
                height: 35,
                child: ListView.separated(
                    separatorBuilder: (context, index) => const SizedBox(
                          width: 12,
                        ),
                    itemCount: _skils.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (ctx, index) {
                      return SkilsWidget(
                        skils: _skils[index],
                      );
                    }),
              ),
            ),
            const Divider(
              height: 25,
              color: Color.fromARGB(25, 42, 86, 121),
              thickness: 5,
            ),
            const Padding(
              padding: EdgeInsets.only(
                left: 20.0,
              ),
              child: Text(
                'Work Experience:',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: SizedBox(
                width: double.maxFinite,
                height: 200,
                child: ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                    separatorBuilder: (context, index) => const SizedBox(
                          width: 12,
                          height: 12,
                        ),
                    itemCount: 2,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (ctx, index) {
                      return const WorkExperience();
                    }),
              ),
            ),
            const Divider(
              height: 25,
              color: Color.fromARGB(25, 42, 86, 121),
              thickness: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: SizedBox(
                width: double.maxFinite,
                height: 200,
                child: ListView.separated(
                    separatorBuilder: (context, index) => const SizedBox(
                          width: 12,
                          height: 12,
                        ),
                    itemCount: 2,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (ctx, index) {
                      return const WorkExperience();
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }

  final List _skils = [
    'CSS',
    'HTML',
    'FRONT',
    'FRONT',
  ];
}
