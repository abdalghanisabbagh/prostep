import 'package:flutter/material.dart';

import '../widget/courses_teacher.dart';

class CoursesTeacher extends StatefulWidget {
  const CoursesTeacher({super.key});

  @override
  State<CoursesTeacher> createState() => _CoursesTeacherState();
}

class _CoursesTeacherState extends State<CoursesTeacher> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20),
      child: SizedBox(
        width: double.maxFinite,
        height: 200,
        child: ListView.separated(
            separatorBuilder: (context, index) => const Divider(
                  height: 25,
                  color: Color.fromARGB(25, 42, 86, 121),
                  thickness: 3,
                ),
            itemCount: 2,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (ctx, index) {
              return const CoursesTeacherWidget();
            }),
      ),
    );
  }
}
