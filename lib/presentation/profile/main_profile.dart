// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prostep1/presentation/profile/widgets/info_widget.dart';
import 'package:prostep1/presentation/resources/routes_manger.dart';
import 'widgets/experience_widget.dart';
import 'widgets/peple_recommended.dart';
import 'widgets/skills_widget.dart';

class MainProfileScreen extends StatelessWidget {
  const MainProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 35.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Image.network(
                  "https://modo3.com/thumbs/fit630x300/116962/1480453251/%D8%B9%D9%85%D9%84_%D8%BA%D9%84%D8%A7%D9%81_%D9%81%D9%8A%D8%B3_%D8%A8%D9%88%D9%83.jpg",
                  height: 125,
                  width: double.infinity,
                  fit: BoxFit.fill,
                ),
                Positioned(
                  top: 60,
                  left: 20,
                  child: SizedBox(
                    width: 120,
                    height: 120,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: ClipOval(
                        child: Image.asset(
                          'assets/images/onboarding1.png',
                          height: 110,
                          width: 110,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                    right: 10,
                    bottom: -30,
                    child: GestureDetector(
                      onTap: () {
                        print("object");
                        Get.toNamed(Routes.getmaineditprofile());
                      },
                      child: const Icon(
                        Icons.edit_outlined,
                        color: Color(0xff1D405B),
                      ),
                    )),
                Positioned(
                    right: 10,
                    top: 20,
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25)),
                      child: const Icon(
                        Icons.camera_alt_rounded,
                        color: Color(0xff1D405B),
                      ),
                    ))
              ],
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    "Farah Touma",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    "Ui/UX Designer",
                    style: TextStyle(
                      color: Color.fromARGB(255, 80, 79, 79),
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Attended Aleppo University , Faculty of Informatics Engineering",
                    style: TextStyle(
                      color: Color.fromARGB(255, 80, 79, 79),
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                ],
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Flexible(
                  flex: 2,
                  fit: FlexFit.tight,
                  child: Container(
                    margin: const EdgeInsets.only(left: 15),
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: const Color.fromARGB(255, 29, 64, 91),
                    ),
                    child: const Center(
                      child: Text(
                        "Train me",
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 14),
                      ),
                    ),
                  ),
                ),
                Flexible(
                  flex: 2,
                  fit: FlexFit.tight,
                  child: Container(
                    margin: const EdgeInsets.only(left: 15),
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(
                          color: const Color.fromARGB(255, 29, 64, 91), width: 2),
                      color: Colors.transparent,
                    ),
                    child: const Center(
                      child: Text(
                        "Message",
                        style: TextStyle(
                            color: Color.fromARGB(255, 29, 64, 91),
                            fontSize: 14),
                      ),
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  fit: FlexFit.tight,
                  child: Container(
                    margin: const EdgeInsets.only(left: 15, right: 15),
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(
                          color: const Color.fromARGB(255, 29, 64, 91), width: 2),
                      color: Colors.transparent,
                    ),
                    child: const Center(
                      child: Text(
                        "...",
                        style: TextStyle(
                            color: Color.fromARGB(255, 29, 64, 91),
                            fontSize: 14),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(children: [
                  Container(
                    color: const Color(0xffebeef0),
                    height: 6,
                  ),
                  InfoWidget(
                    topLeft: const Text(
                      "About me:",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    topRight: const Icon(
                      Icons.edit_outlined,
                      color: Color.fromARGB(255, 29, 64, 91),
                    ),
                    bottem: const Text.rich(
                      TextSpan(
                        text:
                            'PHP Web Developer using frameworks ( laravel and codigniter ) and native php xperience 6 years in web applications',
                        style: TextStyle(fontSize: 15, fontFamily: 'Serif'),
                      ),
                      maxLines: 3,
                      textAlign: TextAlign.justify,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Container(
                    color: const Color(0xffebeef0),
                    height: 6,
                  ),
                  InfoWidget(
                      topLeft: const Text(
                        "My Skills:",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      topRight: const Icon(
                        Icons.edit_outlined,
                        color: Color.fromARGB(255, 29, 64, 91),
                      ),
                      bottem: Row(
                        children: [
                          SkillsWidget(
                            title: 'Css',
                          ),
                          SkillsWidget(
                            title: 'Html',
                          ),
                          SkillsWidget(
                            title: 'Figma',
                          ),
                        ],
                      )),
                  Container(
                    color: const Color(0xffebeef0),
                    height: 6,
                  ),
                  InfoWidget(
                    topLeft: const Text(
                      "Work Experience:",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    topRight: const Icon(
                      Icons.edit_outlined,
                      color: Color.fromARGB(255, 29, 64, 91),
                    ),
                    bottem: Column(
                      children: const [
                        ExperienceWidget(),
                        Divider(
                          color: Colors.grey,
                          height: 1,
                        ),
                        ExperienceWidget(),
                      ],
                    ),
                  ),
                  Container(
                    color: const Color(0xffebeef0),
                    height: 6,
                  ),
                  InfoWidget(
                      topLeft: const Text(
                        "Recommendations:",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      topRight: const Icon(
                        Icons.edit_outlined,
                        color: Color.fromARGB(255, 29, 64, 91),
                      ),
                      bottem: const PepleRecommended()),
                  Container(
                    color: const Color(0xffebeef0),
                    height: 6,
                  ),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
