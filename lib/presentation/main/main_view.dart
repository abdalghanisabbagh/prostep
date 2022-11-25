import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:prostep1/widget/recommendrd_Courses.dart';
import 'package:prostep1/widget/recommendrd_bootcamps.dart';

class MainView extends StatefulWidget {
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<MainView> {
  var currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    double displayWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      
      body: Padding(
        padding: const EdgeInsets.only(top: 50, left: 15),
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
                  onTap: () {},
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
                    maxLines: 1,
                    textInputAction: TextInputAction.done,
                    //لون النص لما بكتب
                    style: const TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 20),
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.only(left: 30, top: 50),
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
                            color: Color.fromARGB(200, 42, 86, 121), width: 1),
                      ),
                      hintText: "Search",
                      hintStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                      ),
                      fillColor: const Color.fromARGB(200, 42, 86, 121),
                      filled: true,
                      suffix: IconButton(
                        splashColor: Colors.white,
                        padding: const EdgeInsets.only(right: 20, top: 25),
                        onPressed: () {},
                        icon: const Icon(
                          Icons.search,
                          color: Color.fromARGB(255, 255, 255, 255),
                          size: 30,
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
                  onTap: () {},
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
            const Text(
              "Recommendrd Courses",
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 29, 64, 91)),
            ),
            const SizedBox(
              height: 25,
            ),
            Flexible(
              flex: 2,
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
             // Recommendrd Bootcamps  
            const Text(
              "Recommendrd Bootcamps",
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 29, 64, 91)),
            ),
            const SizedBox(
              height: 25,
            ),
            Flexible(
              flex: 2,
              child: SizedBox(
                height: 200,
                width: double.infinity,
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
            ),
             // Recommended Training Projects   
            const Text(
              "Recommended Training Projects ",
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 29, 64, 91)),
            ),
            const SizedBox(
              height: 25,
            ),
            Flexible(
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
          ],
        ),
      ),
      bottomNavigationBar: Container(
        //  margin: EdgeInsets.all(displayWidth * .05),
        height: displayWidth * .155,
        width: displayWidth,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 7, 0, 0),
          // borderRadius: BorderRadius.circular(50),
        ),
        child: ListView.builder(
          itemCount: 5,
          scrollDirection: Axis.horizontal,
          //  padding: EdgeInsets.symmetric(horizontal: displayWidth * .01),
          itemBuilder: (context, index) => InkWell(
            onTap: () {
              setState(() {
                currentIndex = index;
                HapticFeedback.lightImpact();
              });
            },
            //splashColor: Colors.white,
            // highlightColor: Colors.white,
            child: Stack(
              children: [
                AnimatedContainer(
                  duration: const Duration(seconds: 1),
                  curve: Curves.fastLinearToSlowEaseIn,
                  width: index == currentIndex
                      ? displayWidth * .30
                      : displayWidth * .16,
                  alignment: Alignment.center,
                  child: AnimatedContainer(
                    duration: const Duration(seconds: 1),
                    curve: Curves.fastLinearToSlowEaseIn,
                    height: index == currentIndex ? displayWidth * .12 : 0,
                    width: index == currentIndex ? displayWidth * .32 : 0,
                    decoration: BoxDecoration(
                      color: index == currentIndex
                          ? Colors.blueAccent.withOpacity(.2)
                          : Colors.white,
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
                AnimatedContainer(
                  duration: const Duration(seconds: 1),
                  curve: Curves.fastLinearToSlowEaseIn,
                  width: index == currentIndex
                      ? displayWidth * .31
                      : displayWidth * .18,
                  alignment: Alignment.center,
                  child: Stack(
                    children: [
                      Row(
                        children: [
                          AnimatedContainer(
                            duration: const Duration(seconds: 1),
                            curve: Curves.fastLinearToSlowEaseIn,
                            width:
                                index == currentIndex ? displayWidth * .13 : 0,
                          ),
                          AnimatedOpacity(
                            opacity: index == currentIndex ? 1 : 0,
                            duration: const Duration(seconds: 1),
                            curve: Curves.fastLinearToSlowEaseIn,
                            child: Text(
                              index == currentIndex ? listOfStrings[index] : '',
                              style: const TextStyle(
                                color: Colors.blueAccent,
                                fontWeight: FontWeight.w600,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          AnimatedContainer(
                            duration: const Duration(seconds: 1),
                            curve: Curves.fastLinearToSlowEaseIn,
                            width:
                                index == currentIndex ? displayWidth * .03 : 20,
                          ),
                          /*Icon(
                            listOfIcons[index],
                            size: displayWidth * .076,
                            color: index == currentIndex
                                ? Colors.blueAccent
                                : Colors.black26,
                          ),*/
                          SvgPicture.asset(
                            listOfBtnNavBar[index],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  List<String> listOfBtnNavBar = [
    /* Icons.home_rounded,
    IconlyLight.activity,
    Icons.person_rounded,
    Icons.star_border,
     Icons.person_rounded,*/
    'assets/images/home1.svg',
    'assets/images/home2.svg',
    'assets/images/home3.svg',
    'assets/images/home4.svg',
    'assets/images/home5.svg',
  ];

  List<String> listOfStrings = [
    'Home',
    'Teacher',
    'Learning',
    'Favorite',
    'Account',
  ];
}
