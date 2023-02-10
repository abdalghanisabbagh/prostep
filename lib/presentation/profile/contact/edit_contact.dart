import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prostep1/presentation/profile/Edit%20Profile/widgets/bottom_nav.dart';
import 'package:prostep1/presentation/profile/Edit%20Profile/widgets/title_text_filed.dart';
import 'package:prostep1/presentation/profile/contact/widget/hiper_text_title.dart';
import 'package:prostep1/presentation/resources/main_appBar.dart';
import 'package:prostep1/presentation/resources/routes_manger.dart';

class EditContact extends StatelessWidget {
  const EditContact({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(75),
          child: MainAppBar(
            text: "Edit Contact info",
            icon: const Icon(
              Icons.arrow_back,
              color: Color(0xff1D405B),
            ),
            ontap: () {},
          )),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HiperText(text: "fara7touma@gmail.com", title: "Email :"),
            const SizedBox(
              height: 20,
            ),
            TitleTextFiled(
              title: "Phone number :",
              text: "+963994712263",
            ),
            const SizedBox(
              height: 15,
            ),
            TitleTextFiled(
              title: "Address:",
              text: "AlsheikhTaha , beside Al-Ashrafyah bridge",
              maxline: 2,
            ),
            const SizedBox(
              height: 30,
            ),
            HiperText(text: "+ Add website :", title: "Website :"),
          ],
        ),
      ),
      bottomNavigationBar:
          BottomNav(onTap: (() => Get.offNamed(Routes.getmainProfileScreen()))),
    );
  }
}
