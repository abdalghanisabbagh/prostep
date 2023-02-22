
class SectionMenu {
  String? name;
  List<SectionMenu> section = [];
  String? time;
  String? number;

  SectionMenu({
    required this.name,
    required this.section,
    required this.time,
    required this.number,
  });

  SectionMenu.fromJSon(Map<String, dynamic> json) {
    name = json['name']!;
    time = json['time'] ?? "00";
    number = json['number'] ?? "00";

    if (json['section'] != null) {
      section.clear();
      json['section']!.forEach((v) {
        section.add(SectionMenu.fromJSon(v));
      });
    }
  }
}

List datalist = [
  {
    "name": "Section 1 - Introduction",
    "section": [
      {
        "name": "Code of the Course ",
        "time": "02:56",
        "number": "1",
      },
      {
        "name": "Mac Installation",
        "time": "02:56",
        "number": "2",
      },
      {
        "name": "Windows Installation",
        "time": "02:56",
        "number": "3",
      },
    ]
  },
  {
    "name": "Section 2 - Introduction",
    "section": [
      {
        "name": "Code of the Course ",
        "time": "02:56",
        "number": "1",
      },
      {
        "name": "Mac Installation",
        "time": "02:56",
        "number": "2",
      },
      {
        "name": "Windows Installation",
        "time": "02:56",
        "number": "4",
      },
    ]
  },
];
