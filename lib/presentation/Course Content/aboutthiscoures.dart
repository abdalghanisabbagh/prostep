import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prostep1/presentation/Course%20Content/course_content_tabs.dart';

class AboutThisCourse extends StatelessWidget {
  const AboutThisCourse({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Color(0xff1D405B),
          ),
          onPressed: (() {
            Get.to(const CourseContent1(),
                transition: Transition.leftToRightWithFade);
          }),
        ),
        centerTitle: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "About this Course",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 18,
            color: Color(
              0xff1D405B,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10.0, left: 10, right: 10),
        child: Column(
          children: const [
            Text(
              'Lorem ipsum dolor sit amet consectetur.\n\n '
              'Senectus dignissim facilisis maecenas eget massa nuncaliquet varius scelerisque turpis morbi non dictum sit.\n\n'
              'In feugiat tortor enim adipiscing vel ac varius. Sed tristique odio vitae at nisl aAliquet turpis pulvinar blandit elementum duis fermentum vel enim. Feugiat cursus ut purus morbi a in feugiat.'
              ' Dictum nibh felis non dignissim parturient cursus diam. \n\n'
              'Egestas feugiat id nibh et aenean quis enim purus\n\n'
              ' Amet justo duis mauris diam.\n\n'
              ' Ut dignissim vel id et nascetur vulputate viverra magna montes.\n\n'
              'Enim amet imperdiet gravida eget hendrerit dictumst consequat nulla.\n\n'
              ' Praesent in quam sit non tempor integer volutpat nec euismod.\n\n'
              ' Eget eget a faucibus aliquam. \n\n',
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  wordSpacing: 5,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
