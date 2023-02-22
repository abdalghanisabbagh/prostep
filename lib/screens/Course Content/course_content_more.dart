import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CourseContentMore extends StatefulWidget {
  const CourseContentMore({super.key});

  @override
  State<CourseContentMore> createState() => _CourseContentMoreState();
}

class _CourseContentMoreState extends State<CourseContentMore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 15.0, top: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextButton.icon(
              onPressed: () {},
              icon: SvgPicture.asset("assets/svg/a.svg",color: const Color.fromARGB(255, 29, 64, 91),),
              label: const SizedBox(
                width: double.maxFinite,
                child: Text(
                  'About this Course',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
            ),
            TextButton.icon(
              onPressed: () {},
              icon: SvgPicture.asset("assets/svg/Coursecertificate.svg",color: const Color.fromARGB(255, 29, 64, 91),),
              label: const SizedBox(
                width: double.maxFinite,
                child: Text(
                  'Course certificate',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
            ),
            TextButton.icon(
              onPressed: () {},
              icon: SvgPicture.asset("assets/svg/SharethisCourse.svg",color: const Color.fromARGB(255, 29, 64, 91),),
              label: const SizedBox(
                width: double.maxFinite,
                child: Text(
                  'Share this Course',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
            ),
            TextButton.icon(
              onPressed: () {},
              icon: SvgPicture.asset("assets/svg/Addtofavorites.svg",color: const Color.fromARGB(255, 29, 64, 91),),
              label: const SizedBox(
                width: double.maxFinite,
                child: Text(
                  'Add to favorites',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
            ),
            TextButton.icon(
              onPressed: () {},
              icon: SvgPicture.asset("assets/svg/Leaveacomment.svg",color: const Color.fromARGB(255, 29, 64, 91),),
              label: const SizedBox(
                width: double.maxFinite,
                child: Text(
                  'Leave a comment',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
            ),
            TextButton.icon(
              onPressed: () {},
              icon: SvgPicture.asset("assets/svg/Evaluatethiscourse.svg",color: const Color.fromARGB(255, 29, 64, 91),),
              label: const SizedBox(
                width: double.maxFinite,
                child: Text(
                  'Evaluate this course',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.red),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
