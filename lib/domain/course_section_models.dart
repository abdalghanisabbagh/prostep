import 'package:flutter/material.dart';

class SectionMenu {
  late String name;
  List<SectionMenu> section = [];
  IconData? iconData;
 // late String time;

  SectionMenu({
    required this.name,
    required this.section,
    required this.iconData,
  });

  SectionMenu.fromJSon(Map<String, dynamic> json) {
    name = json['name'];
    //time = json['time'];
    iconData = json['icondate'];
    if (json['section'] != null) {
      section.clear();
      json['section'].forEach((v) {
        section.add(SectionMenu.fromJSon(v));
      });
    }
  }
}

List datalist = [
  {
    "name": "Section 1 - Introduction",
    "iconData": Icons.add,
    "section": [
      {"name": "Code of the Course ", "time": "02:56"},
      {"name": "Mac Installation"},
      {"name": "Windows Installation"},
    ]
  },
  {
    "name": "Section 2 - Introduction",
    "iconData": Icons.add,
    "section": [
      {"name": "Code of the Course "},
      {"name": "Mac Installation"},
      {"name": "Windows Installation"},
    ]
  },
  {
    "name": "Section 3 - Introduction",
    "iconData": Icons.add,
    "section": [
      {"name": "Code of the Course "},
      {"name": "Mac Installation"},
      {"name": "Windows Installation"},
    ]
  },
];
