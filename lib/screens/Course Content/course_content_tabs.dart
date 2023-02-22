import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:prostep1/screens/Course%20Content/course_content_lectures.dart';
import 'package:prostep1/screens/Course%20Content/course_content_more.dart';
import 'package:video_player/video_player.dart';

class CourseContent1 extends StatefulWidget {
  const CourseContent1({super.key});

  @override
  State<CourseContent1> createState() => _CourseContent1State();
}

class _CourseContent1State extends State<CourseContent1> {
  ChewieController? chewieController;
  late VideoPlayerController _controller;
  Future<void> loadVideoPlayer() async {
    _controller = VideoPlayerController.network(
      "https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4",
    );

    await Future.wait([_controller.initialize()]);
    chewieController = ChewieController(
      videoPlayerController: _controller,
      autoPlay: false,
      looping: false,
    );
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    loadVideoPlayer();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
    chewieController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 25,
            ),
            SizedBox(
              width: double.maxFinite,
              height: 250,
              child: chewieController != null &&
                      chewieController!
                          .videoPlayerController.value.isInitialized
                  ? Chewie(controller: chewieController!)
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        CircularProgressIndicator(),
                        SizedBox(
                          height: 20,
                        ),
                        Text('looding')
                      ],
                    ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  SizedBox(
                    height: 18,
                  ),
                  Text(
                    'Introduction to Dart essentials',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Hussan Fullah',
                    style: TextStyle(
                      color: Color.fromARGB(255, 102, 109, 115),
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: SizedBox(
                width: 200,
                child: TabBar(
                  isScrollable: true,
                  indicatorColor: Color.fromARGB(255, 42, 68, 121),
                  tabs: [
                    Text(
                      "Lectures",
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    ),
                    Text('More',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        )),
                  ],
                ),
              ),
            ),
            const Expanded(
              child: TabBarView(
                children: [
                  CourseContentLectures(),
                  CourseContentMore(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
