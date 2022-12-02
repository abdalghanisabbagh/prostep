import 'package:flutter/material.dart';
import 'package:prostep1/widget/text_with_icone.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.75,
      child: ClipRRect(
        borderRadius: BorderRadius.horizontal(
          left: Radius.circular(25),
        ),
        child: Drawer(
          // Add a ListView to the drawer. This ensures the user can scroll
          // through the options in the drawer if there isn't enough vertical
          // space to fit everything.
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      DrawerHeader(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            maxRadius: 30,
                            backgroundColor: Color(0xff2a5679),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Farah",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff2a5679)),
                              ),
                              Text(
                                "View Profile",
                                style: TextStyle(color: Color(0xffa4b7c6)),
                              )
                            ],
                          )
                        ],
                      )),
                      ListTile(
                        title: TextWithIconeWidget(
                            title: "Certificates", svgIcon: "file.svg"),
                        onTap: () {
                          // Update the state of the app.
                          // ...
                        },
                      ),
                      ListTile(
                        title: TextWithIconeWidget(
                            title: "Common Questions",
                            svgIcon: "mdi_comment-question-outline.svg"),
                        onTap: () {
                          // Update the state of the app.
                          // ...
                        },
                      ),
                      ListTile(
                        title: TextWithIconeWidget(
                            title: "Language ", svgIcon: "internet.svg"),
                        onTap: () {
                          // Update the state of the app.
                          // ...
                        },
                      ),
                      ListTile(
                        title: TextWithIconeWidget(
                            title: "Privacy Policy",
                            svgIcon: "interrogative.svg"),
                        onTap: () {
                          // Update the state of the app.
                          // ...
                        },
                      ),
                      ListTile(
                        title: TextWithIconeWidget(
                            title: "Settings", svgIcon: "settings.svg"),
                        onTap: () {
                          // Update the state of the app.
                          // ...
                        },
                      ),
                    ],
                  ),
                ),
                Container(
                    padding: EdgeInsets.only(left: 150, bottom: 50),
                    child: TextWithIconeWidget(
                        title: "Logout", svgIcon: "logout_ic.svg"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
