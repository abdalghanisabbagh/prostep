class Comments {
  String? name;
  String? time;
  String? date;
  String? numlecture;
  String? title;
  String? numresponse;
  String? image;
  List<Comments> responses = [];

  Comments({
    required this.name,
    required this.time,
    required this.numlecture,
    required this.date,
    required this.title,
    required this.numresponse,
    required this.image,
  });
  Comments.fromJSon(Map<String, dynamic> json) {
    name = json['name']!;
    time = json['time']!;
    numlecture = json['numlecture']!;
    date = json['date']!;
    title = json['title']!;
    numresponse = json['numresponse']!;
    image = json['image']!;
    if (json['responses'] != null) {
      responses.clear();
      json['responses']!.forEach((v) {
        responses.add(Comments.fromJSon(v));
      });
    }
  }
}

List commentslist = [
  {
    "name": "Jenda Othman",
    "time": "13:55",
    "numlecture": "22",
    "date": "2022/12/12",
    "title": "Lorem ipsum dolor sit amet consectetur."
        " Dui sed neque cursus vulputate.nec iaculis tellus ullamcorper hac. Dignissim vulputate enim vel cursus ornare quam turpis.",
    "numresponse": "3",
    "image":
        "https://phantom-marca.unidadeditorial.es/7b8a0dd2d4352d62f227a68766590624/crop/0x0/698x465/resize/1320/f/jpg/assets/multimedia/imagenes/2022/10/08/16652526665350.jpg",
    "responses": [
      {
        "name": "Jenda Othman",
        "time": "13:55",
        "numlecture": "22",
        "date": "2022/12/12",
        "title": "Lorem ipsum dolor sit amet consectetur."
            " Dui sed neque cursus vulputate.nec iaculis tellus ullamcorper hac. Dignissim vulputate enim vel cursus ornare quam turpis.",
        "numresponse": "3",
        "image":
            "https://phantom-marca.unidadeditorial.es/7b8a0dd2d4352d62f227a68766590624/crop/0x0/698x465/resize/1320/f/jpg/assets/multimedia/imagenes/2022/10/08/16652526665350.jpg",
      },
    ]
  },
  {
    "name": "Jenda Othman",
    "time": "13:55",
    "numlecture": "22",
    "date": "2022/12/12",
    "title": "Lorem ipsum dolor sit amet consectetur."
        " Dui sed neque cursus vulputate.nec iaculis tellus ullamcorper hac. Dignissim vulputate enim vel cursus ornare quam turpis.",
    "numresponse": "3",
    "image":
        "https://phantom-marca.unidadeditorial.es/7b8a0dd2d4352d62f227a68766590624/crop/0x0/698x465/resize/1320/f/jpg/assets/multimedia/imagenes/2022/10/08/16652526665350.jpg",
  },
];
