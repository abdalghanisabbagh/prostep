import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../domain/course_section_models.dart';

class CourseContentLectures extends StatefulWidget {
  const CourseContentLectures({super.key});

  @override
  State<CourseContentLectures> createState() => _CourseContentLecturesState();
}

class _CourseContentLecturesState extends State<CourseContentLectures> {
  List<SectionMenu> data = [];
  bool icon1 = true;
  @override
  void initState() {
    super.initState();
    datalist.forEach((element) {
      data.add(SectionMenu.fromJSon(element));
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50 * data.length.toDouble(),
      width: double.maxFinite,
      child: ListView.builder(
        itemCount: data.length,
        itemBuilder: (BuildContext context, int index) =>
            _bulidlist(data[index]),
      ),
    );
  }

  Widget _bulidlist(SectionMenu list) {
    if (list.section.isEmpty) {
      return Builder(builder: (context) {
        return ListTile(
          title: Text(
            list.name.toString(),
            style: const TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontSize: 14,
                fontWeight: FontWeight.bold),
          ),
          minLeadingWidth: 20,
          subtitle: Text("Video - ${list.time.toString()} mins"),
          leading: Text(
            list.number.toString(),
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
        );
      });
    }
    return ExpansionTile(
      title: Text(
        list.name.toString(),
        style: const TextStyle(
            fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black),
      ),
      children: list.section.map(_bulidlist).toList(),
    );
  }
}
