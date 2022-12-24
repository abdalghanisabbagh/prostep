import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:prostep1/presentation/resources/assets_manger.dart';
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

  late double rate = 0;

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
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
              padding: const EdgeInsets.only(left: 10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 18,
                  ),
                  const Text(
                    'Introduction to Dart essentials',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'PHP Web Developer using frameworks .',
                    style: TextStyle(
                      color: Color.fromARGB(255, 102, 109, 115),
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text('$rate'),
                      RatingBar.builder(
                        itemSize: 15,
                        initialRating: 0,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemPadding:
                            const EdgeInsets.symmetric(horizontal: 2.0),
                        itemBuilder: (context, _) => const Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {
                          setState(() {
                            rate = rating;
                          });
                        },
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: const [
                      Text(
                        'Created By : ',
                        style: TextStyle(
                          color: Color.fromARGB(255, 42, 86, 121),
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        'Hassan Fullah',
                        style: TextStyle(
                          color: Color.fromARGB(255, 42, 86, 121),
                          fontSize: 15,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 40,
                    child: ListTile(
                      leading: SvgPicture.asset(
                        'assets/svg/!!!!.svg',
                        width: 25,
                        height: 25,
                      ),
                      contentPadding: const EdgeInsets.only(left: 0.0),
                      title: const Text(
                        'Last updated 09/2021',
                        style: TextStyle(color: Colors.black, fontSize: 14),
                      ),
                      minLeadingWidth: 25,
                    ),
                  ),
                  SizedBox(
                    height: 40,
                    child: ListTile(
                      leading: SvgPicture.asset(
                        'assets/svg/language.svg',
                        width: 25,
                        height: 25,
                      ),
                      contentPadding: const EdgeInsets.only(left: 0.0),
                      title: const Text(
                        'English',
                        style: TextStyle(color: Colors.black, fontSize: 14),
                      ),
                      minLeadingWidth: 25,
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                    child: ListTile(
                      contentPadding: EdgeInsets.only(left: 0.0, right: 275),
                      title: Text(
                        '\$3.99',
                        style: TextStyle(color: Colors.black, fontSize: 14),
                      ),
                      trailing: Text(
                        '\$10.99',
                        style: TextStyle(
                            color: Color.fromARGB(255, 102, 109, 115),
                            fontSize: 14,
                            decoration: TextDecoration.lineThrough),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 29, 64, 91),
                          border: Border.all(
                              color: const Color.fromARGB(255, 29, 64, 91),
                              width: 1.5),
                          borderRadius: BorderRadius.circular(7),
                        ),
                        width: 140,
                        height: 35,
                        child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Buy now ",
                            style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 40,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: const Color.fromARGB(255, 29, 64, 91),
                              width: 2),
                          borderRadius: BorderRadius.circular(7),
                        ),
                        width: 140,
                        height: 35,
                        child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            " Add to cart",
                            style: TextStyle(
                                color: Color.fromARGB(255, 29, 64, 91),
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    'What you’ll learn',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 40,
                    child: ListTile(
                      leading: SvgPicture.asset(
                        'assets/svg/material-symbols_check-small.svg',
                        width: 25,
                        height: 25,
                      ),
                      contentPadding: const EdgeInsets.only(left: 0.0),
                      title: const Text(
                        'Programming Fundamental',
                        style: TextStyle(color: Colors.black, fontSize: 14),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                    child: ListTile(
                      leading: SvgPicture.asset(
                        'assets/svg/material-symbols_check-small.svg',
                        width: 25,
                        height: 25,
                      ),
                      contentPadding: const EdgeInsets.only(left: 0.0),
                      title: const Text(
                        'Learn Dart from the ground up , step-by-step .',
                        style: TextStyle(color: Colors.black, fontSize: 14),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                    child: ListTile(
                      leading: SvgPicture.asset(
                        'assets/svg/material-symbols_check-small.svg',
                        width: 25,
                        height: 25,
                      ),
                      contentPadding: const EdgeInsets.only(left: 0.0),
                      title: const Text(
                        'Everything you need in Dart to get started with Flutter .',
                        style: TextStyle(color: Colors.black, fontSize: 14),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
