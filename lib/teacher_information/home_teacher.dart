import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeTeacher extends StatefulWidget {
  const HomeTeacher({super.key});

  @override
  State<HomeTeacher> createState() => _HomeTeacherState();
}

class _HomeTeacherState extends State<HomeTeacher> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Padding(
            padding: EdgeInsets.only(left: 20.0, top: 25),
            child: Text(
              'Education:',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
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
          Divider(
            height: 25,
            color: Color.fromARGB(25, 42, 86, 121),
            thickness: 5,
          ),
          Padding(
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
          SizedBox(
            height: 5,
          ),
          Padding(
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
          Divider(
            height: 25,
            color: Color.fromARGB(25, 42, 86, 121),
            thickness: 5,
          )
        ],
      ),
    );
  }
}
