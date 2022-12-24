import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class CourseContent extends StatefulWidget {
  const CourseContent({super.key});

  @override
  State<CourseContent> createState() => _CourseContentState();
}

class _CourseContentState extends State<CourseContent> {
  late VideoPlayerController _controller;
  ChewieController? chewieController;
  Future<void> loadVideoPlayer() async {
    _controller = VideoPlayerController.network(
        "https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4");

    await Future.wait([_controller.initialize()]);
    chewieController = ChewieController(
        videoPlayerController: _controller,
        autoPlay: false,
        looping: false,
        subtitle: Subtitles([
          Subtitle(
              index: 0,
              start: Duration.zero,
              end: const Duration(seconds: 3),
              text: "ssssss"),
          Subtitle(
              index: 1,
              start: const Duration(seconds: 4),
              end: const Duration(seconds: 4),
              text: "aaaa")
        ]),
        subtitleBuilder: ((context, subtitle) => Container(
              padding: EdgeInsets.all(10),
              child: Text(
                subtitle,
              ),
            )));
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    loadVideoPlayer();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
    chewieController!.dispose();
  }
  /* @override
  void initState() {
    _controller = VideoPlayerController.network(
        "https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4",
        videoPlayerOptions: VideoPlayerOptions())
      ..initialize().then((_) {
        setState(() {
          _controller.play();
        });
      });
    super.initState();
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Color(0xff1D405B),
          ),
          onPressed: (() {}),
        ),
        centerTitle: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Course Content",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 18,
            color: Color(
              0xff1D405B,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            width: double.maxFinite,
            height: 250,
            child: chewieController != null &&
                chewieController!.videoPlayerController.value.isInitialized
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
          )
        ],
      ),
    );
  }

  Widget ved() {
    return Container(
      width: 350,
      height: 350,
      child: _controller.value.isInitialized
          ? VideoPlayer(_controller)
          : Container(),
    );
  }
}
