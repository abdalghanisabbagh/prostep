import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:prostep1/presentation/Course%20Content/Course_Content.dart';

class RecommendrdBootcamps extends StatefulWidget {
  const RecommendrdBootcamps({super.key});

  @override
  State<RecommendrdBootcamps> createState() => _RecommendrdBootcampsState();
}

class _RecommendrdBootcampsState extends State<RecommendrdBootcamps> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.to(const CourseContent()),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            "https://inlab.fib.upc.edu/sites/default/files/field/image/dart_1.png",
            height: 80,
            width: 225,
            fit: BoxFit.fill,
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Introduction to Dart essentials",
            maxLines: 1,
            style: TextStyle(
              color: Color.fromARGB(255, 0, 0, 0),
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          const SizedBox(
            height: 7,
          ),
          RatingBar.builder(
            itemSize: 20,
            initialRating: 3,
            minRating: 1,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemCount: 5,
            itemPadding: const EdgeInsets.symmetric(horizontal: 2.0),
            itemBuilder: (context, _) => const Icon(
              Icons.star,
              color: Colors.amber,
              //  size: 0.1,
            ),
            onRatingUpdate: (rating) {
              print(rating);
            },
          ),
          const SizedBox(
            height: 7,
          ),
          Row(
            children: const [
              Text(
                "9.9\$",
                maxLines: 1,
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontWeight: FontWeight.bold,
                  fontSize: 11,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "12.5\$",
                maxLines: 1,
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontWeight: FontWeight.bold,
                  fontSize: 11,
                  decoration: TextDecoration.lineThrough,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
