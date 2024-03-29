import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:prostep1/controllers/home_controller.dart';
import 'package:prostep1/screens/resources/routes_manger.dart';

import '../../widget/recommendrd_Courses.dart';
import '../../widget/recommendrd_bootcamps.dart';

class Startingpage extends GetView<HomeController> {
  const Startingpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: Colors.white,
        elevation: 0.1,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 15.0, left: 12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //welcome
              const Text(
                'Welcome !',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 29, 64, 91)),
              ),
              Row(
                children: [
                  //farah
                  const Text(
                    'Farah',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Color.fromARGB(255, 29, 64, 91)),
                  ),
                  //naf
                  const SizedBox(
                    width: 175,
                  ),
                  InkWell(
                    splashColor: Colors.white,
                    onTap: () {},
                    child: SvgPicture.asset(
                      'assets/images/naf.svg',
                    ),
                  ),
                  //caht
                  const SizedBox(
                    width: 25,
                  ),
                  InkWell(
                    splashColor: Colors.white,
                    onTap: () {},
                    child: SvgPicture.asset(
                      'assets/images/caht.svg',
                    ),
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  //menu
                  InkWell(
                    splashColor: Colors.white,
                    onTap: () {
                      controller.openDrawer();
                    },
                    child: SvgPicture.asset(
                      'assets/images/menu.svg',
                    ),
                  ),
                ],
              ),
              //text field search
              const SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  SizedBox(
                    height: 50,
                    width: 275,
                    //text field search

                    child: TextField(
                      style: const TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 20),
                      textInputAction: TextInputAction.done,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 15),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: const BorderSide(
                            color: Color.fromARGB(200, 42, 86, 121),
                            width: 1,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: const BorderSide(
                              color: Color.fromARGB(200, 42, 86, 121),
                              width: 1),
                        ),
                        hintText: "Search",
                        fillColor: const Color.fromARGB(200, 42, 86, 121),
                        filled: true,
                        hintStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                        ),
                        suffixIcon: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.search,
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                  // icon filter
                  InkWell(
                    splashColor: Colors.white,
                    onTap: () {
                      Get.toNamed(Routes.getfiltering());
                    },
                    child: SvgPicture.asset(
                      'assets/images/filter.svg',
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              //Recommendrd Courses
              Row(
                children: const [
                  Text(
                    "Recommendrd Courses",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 29, 64, 91)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 120),
                    child: InkWell(
                      child: Text(
                        "See All",
                        style: TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(255, 42, 86, 121),
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              SizedBox(
                width: double.maxFinite,
                height: 200,
                child: ListView.separated(
                    separatorBuilder: (context, index) => const SizedBox(
                          width: 12,
                        ),
                    itemCount: 2,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (ctx, index) {
                      return const RecommendrdCourses();
                    }),
              ),
              Row(
                children: const [
                  Text(
                    "Recommendrd Bootcamps",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 29, 64, 91)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 100),
                    child: InkWell(
                      child: Text(
                        "See All",
                        style: TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(255, 42, 86, 121),
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              SizedBox(
                height: 200,
                width: double.maxFinite,
                child: ListView.separated(
                    separatorBuilder: (context, index) => const SizedBox(
                          width: 12,
                        ),
                    itemCount: 2,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (ctx, index) {
                      return const RecommendrdBootcamps();
                    }),
              ),
              // Recommended Training Projects
              Row(children: const [
                Text(
                  "Recommended Training Projects ",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 29, 64, 91)),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 45),
                  child: InkWell(
                    child: Text(
                      "See All",
                      style: TextStyle(
                        fontSize: 15,
                        color: Color.fromARGB(255, 42, 86, 121),
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ),
              ]),
              const SizedBox(
                height: 25,
              ),
              SizedBox(
                width: double.maxFinite,
                height: 200,
                child: ListView.separated(
                    separatorBuilder: (context, index) => const SizedBox(
                          width: 50,
                        ),
                    itemCount: 2,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (ctx, index) {
                      return const RecommendrdBootcamps();
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
