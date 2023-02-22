import 'package:flutter/material.dart';
import 'package:prostep1/screens/teacher_information/bootcamps_teacher.dart';
import 'package:prostep1/screens/teacher_information/courses_teacher.dart';
import 'package:prostep1/screens/teacher_information/home_teacher.dart';
import 'package:prostep1/screens/teacher_information/projects_teacher.dart';

class TeacherInfoTopbar extends StatefulWidget {
  const TeacherInfoTopbar({super.key});

  @override
  State<TeacherInfoTopbar> createState() => _TeacherInfoTopbarState();
}

class _TeacherInfoTopbarState extends State<TeacherInfoTopbar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 35.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Image.network(
                    "https://modo3.com/thumbs/fit630x300/116962/1480453251/%D8%B9%D9%85%D9%84_%D8%BA%D9%84%D8%A7%D9%81_%D9%81%D9%8A%D8%B3_%D8%A8%D9%88%D9%83.jpg",
                    height: 125,
                    width: double.infinity,
                    fit: BoxFit.fill,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 85.0, left: 150),
                    child: SizedBox(
                      width: 80,
                      height: 80,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: ClipOval(
                          child: Image.asset(
                            'assets/images/onboarding1.png',
                            height: 70,
                            width: 70,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              const Center(
                child: Text(
                  "Hassan Fullah",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 3,
              ),
              const Center(
                child: Text(
                  "Ui/UX Designer",
                  style: TextStyle(
                    color: Color.fromARGB(255, 80, 79, 79),
                    fontSize: 14,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: 125,
                    child: MaterialButton(
                      onPressed: () {},
                      color: const Color.fromARGB(255, 29, 64, 91),
                      splashColor: Colors.white,
                      child: const Text(
                        "Train me",
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 14),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color.fromARGB(255, 29, 64, 91),
                          width: 1.5),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    width: 125,
                    height: 35,
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        " Message",
                        style: TextStyle(
                            color: Color.fromARGB(255, 29, 64, 91),
                            fontSize: 14),
                      ),
                    ),
                  ),
                  Container(
                    width: 50,
                    height: 35,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color.fromARGB(255, 29, 64, 91),
                          width: 2),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: const Icon(Icons.more_horiz,color: Colors.black54)
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const TabBar(
                padding: EdgeInsets.only(left: 20),
                isScrollable: true,
                tabs: [
                  Text(
                    "Home",
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                  Text('Courses',
                      style: TextStyle(color: Colors.black, fontSize: 15)),
                  Text('Bootcamps',
                      style: TextStyle(color: Colors.black, fontSize: 15)),
                  Text('Projects',
                      style: TextStyle(color: Colors.black, fontSize: 15)),
                ],
              ),
              const Expanded(
                child: TabBarView(children: [
                  HomeTeacher(),
                  CoursesTeacher(),
                  BootcampsTeacher(),
                  ProjectsTeacher(),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
