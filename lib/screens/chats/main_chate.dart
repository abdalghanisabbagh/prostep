import 'package:flutter/material.dart';
import 'package:prostep1/screens/chats/widgets/contact_view.dart';
import 'package:prostep1/screens/resources/main_appBar.dart';

class MainChat extends StatelessWidget {
  const MainChat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(75),
          child: MainAppBar(
            text: "Messages",
            icon: const Icon(
              Icons.arrow_back,
              color: Color(0xff1D405B),
            ),
            ontap: () {},
          )),
      body: ListView.builder(
          itemCount: 3,
          itemBuilder: ((context, index) {
            return const Padding(
              padding:  EdgeInsets.all(20),
              child: ContactView(),
            );
          })),
    );
  }
}
