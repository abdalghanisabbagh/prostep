import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../text_widget.dart';

class GlobalMethods {
  static navigateTo({required BuildContext ctx, required String routeName}) {
    Navigator.pushNamed(ctx, routeName);
  }

  static Future<void> passingexam({
    required String title,
    required String subtitle,
    required Function fct,
    required BuildContext context,
  }) async {
    await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            title: Column(
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Color.fromARGB(255, 103, 242, 100),
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  subtitle,
                  style: const TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 15,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SvgPicture.asset('assets/svg/true.svg'),
                const SizedBox(
                  width: 8,
                ),
              ],
            ),
            backgroundColor: const Color.fromARGB(255, 29, 64, 121),
            actions: [
              Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 29, 52, 89),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7)),
                      ),
                      onPressed: () {
                        if (Navigator.canPop(context)) {
                          Navigator.pop(context);
                        }
                      },
                      child: TextWidget(
                        color: const Color.fromARGB(255, 255, 255, 255),
                        text: 'Close',
                        textSize: 18,
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(125, 217, 217, 217),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7)),
                      ),
                      onPressed: () {
                        fct();
                        if (Navigator.canPop(context)) {
                          Navigator.pop(context);
                        }
                      },
                      child: TextWidget(
                        color: const Color.fromARGB(255, 255, 255, 255),
                        text: 'Next',
                        textSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        });
  }

  static Future<void> faialingexam({
    required String title,
    required String subtitle,
    required Function fct,
    required BuildContext context,
  }) async {
    await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            alignment: Alignment.center,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            title: Column(
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Color.fromARGB(255, 242, 100, 100),
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  subtitle,
                  style: const TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 15,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 10,
                ),
                SvgPicture.asset('assets/svg/false.svg'),
                const SizedBox(
                  width: 8,
                ),
              ],
            ),
            backgroundColor: const Color.fromARGB(255, 29, 52, 89),
            actions: [
              Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(48, 217, 217, 217),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7)),
                      ),
                      onPressed: () {
                        if (Navigator.canPop(context)) {
                          Navigator.pop(context);
                        }
                      },
                      child: TextWidget(
                        color: const Color.fromARGB(255, 255, 255, 255),
                        text: 'Close',
                        textSize: 18,
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(125, 217, 217, 217),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7)),
                      ),
                      onPressed: () {
                        fct();
                        if (Navigator.canPop(context)) {
                          Navigator.pop(context);
                        }
                      },
                      child: TextWidget(
                        color: const Color.fromARGB(255, 255, 255, 255),
                        text: 'Retry',
                        textSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        });
  }
}
