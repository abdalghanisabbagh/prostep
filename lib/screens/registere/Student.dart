import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:prostep1/screens/resources/routes_manger.dart';

import '../../auth_button.dart';
import '../../controllers/getmaincategories_controllers.dart';

class CoachOrStudent extends StatefulWidget {
  CoachOrStudent({super.key, required this.usertype});
  int usertype;

  @override
  State<CoachOrStudent> createState() => _CoachOrStudentState();
}

class _CoachOrStudentState extends State<CoachOrStudent> {
  final MyController c = Get.put(MyController());

  bool css = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color.fromARGB(255, 42, 86, 121),
            Color.fromARGB(166, 42, 86, 121),
          ],
          stops: [0.65, 1],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.only(top: 50.0, left: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IndexedStack(
                index: widget.usertype,
                children: [
                  const SizedBox(),
                  const SizedBox(),
                  const SizedBox(),
                  const SizedBox(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset('assets/svg/mdi_warning-circle.svg'),
                          const SizedBox(
                            width: 25,
                          ),
                          const SizedBox(
                            width: 250,
                            child: Text(
                              'Please add your certificate '
                              'in Profile settings when log in',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      const Text(
                        'Optional:',
                        style: TextStyle(
                          color: Color.fromARGB(255, 216, 216, 216),
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const Text(
                        'What do you want to learn ?',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Obx(() {
                        return SizedBox(
                          width: double.infinity - 30,
                          height: c.data.length * 75,
                          child: ListView.builder(
                            itemCount: c.data.length,
                            itemBuilder: (context, index) {
                              return CheckboxListTile(
                                side: const BorderSide(color: Colors.white),
                                controlAffinity:
                                    ListTileControlAffinity.leading,
                                activeColor: Colors.transparent,
                                title: Text(
                                  c.data[index].name,
                                  style: const TextStyle(color: Colors.white),
                                ),
                                value: c.data[index].isSelected,
                                onChanged: (value) {
                                  setState(() {
                                    c.data[index].isSelected = value!;
                                  });
                                },
                              );
                            },
                          ),
                        );
                      }),
                      const Text(
                        'PS: as soon as you’re a teacher'
                        'you have the permission to learn'
                        'another specification (as a student) if you want.',
                        style: TextStyle(
                          color: Color.fromARGB(255, 216, 216, 216),
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'What do you want to learn ?',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Obx(() {
                        return SizedBox(
                          width: double.infinity - 30,
                          height: c.data.length * 75,
                          child: ListView.builder(
                            itemCount: c.data.length,
                            itemBuilder: (context, index) {
                              return CheckboxListTile(
                                side: const BorderSide(color: Colors.white),
                                controlAffinity:
                                    ListTileControlAffinity.leading,
                                activeColor: Colors.transparent,
                                title: Text(
                                  c.data[index].name,
                                  style: const TextStyle(color: Colors.white),
                                ),
                                value: c.data[index].isSelected,
                                onChanged: (value) {
                                  setState(() {
                                    c.data[index].isSelected = value!;
                                  });
                                },
                              );
                            },
                          ),
                        );
                      }),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              AuthButton(
                fct: () {
                  Get.toNamed(Routes.mainRoute);
                  /*await Get.find<RegisterationController>().registerWithEmail(
                      widget.name, widget.em, widget.pas, 5);*/
                },
                buttonText: 'Login',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
