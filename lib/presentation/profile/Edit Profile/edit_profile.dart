import 'package:drop_down_list/drop_down_list.dart';
import 'package:drop_down_list/model/selected_list_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prostep1/presentation/profile/Edit%20Profile/widgets/bottom_nav.dart';
import 'package:prostep1/presentation/profile/Edit%20Profile/widgets/dropdown_list.dart';
import 'package:prostep1/presentation/profile/Edit%20Profile/widgets/title_text_filed.dart';
import 'package:prostep1/presentation/profile/widgets/skills_widget.dart';
import 'package:prostep1/presentation/resources/main_appBar.dart';
import 'package:prostep1/presentation/resources/routes_manger.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController richControler = new TextEditingController();
    richControler.text =
        'PHP Web Developer using frameworks ( laravel and codigniter ) and native php xperience 6 years in web applications';
    void onTextFieldTap() {
      DropDownState(
        DropDown(
          bottomSheetTitle: const Text(
            "Career *:",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
          submitButtonChild: const Text(
            'Done',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          data: [
            SelectedListItem(name: 'name'),
            SelectedListItem(name: 'name2'),
            SelectedListItem(name: 'name3'),
          ],
          selectedItems: (List<dynamic> selectedList) {},
          enableMultipleSelection: false,
        ),
      ).showModal(context);
    }

    var items = [
      'UI/UX',
      'Aleppo University',
      'Informatics Engineer',
      'Item 3',
      'Item 4',
      'Item 5',
    ];

    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(75),
          child: MainAppBar(
            text: "Edit Profile",
            icon: const Icon(
              Icons.arrow_back,
              color: Color(0xff1D405B),
            ),
            ontap: () {},
          )),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TitleTextFiled(
                title: "First name *:",
                text: "Farah",
              ),
              const SizedBox(
                height: 10,
              ),
              TitleTextFiled(
                title: "Last name *:",
                text: "Touma",
              ),
              const SizedBox(
                height: 10,
              ),
              CustemDropDown(
                items: items,
                title: "Career *:",
                i: 0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: GestureDetector(
                    child: const Text(
                  "+ Add new Career",
                  style: TextStyle(color: Color(0xff2A5679)),
                )),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "About",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
              Container(
                height: 100,
                width: double.maxFinite,
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                ),
                margin: const EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: const Color(0xff1D405B),
                    width: 2,
                  ),
                ),
                child: TextField(
                  style: const TextStyle(color: Color(0xff666D73)),
                  decoration: const InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent)),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent)),
                  ),
                  controller: richControler,
                  expands: true,
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "Education",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 15,
              ),
              CustemDropDown(
                items: items,
                title: "University ",
                i: 1,
              ),
              CustemDropDown(
                items: items,
                title: "Faculty ",
                i: 2,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: GestureDetector(
                    child: const Text(
                  "+ Add new Career",
                  style: TextStyle(color: Color(0xff2A5679)),
                )),
              ),
              const SizedBox(
                height: 25,
              ),
              const Text(
                "My Skills:",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  SkillsWidget(
                    title: 'Css',
                  ),
                  SkillsWidget(
                    title: 'HTML',
                  ),
                  SkillsWidget(
                    title: 'Figma',
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, top: 10),
                child: GestureDetector(
                    child: const Text(
                  "+ Add new Career",
                  style: TextStyle(color: Color(0xff2A5679)),
                )),
              ),
              const SizedBox(
                height: 25,
              ),
              const Text(
                "My Skills:",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 75,
                width: double.maxFinite,
                child: ListView.builder(
                    itemCount: 2,
                    itemBuilder: ((context, index) {
                      return const Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Junior flutter developer at plus99',
                          textWidthBasis: TextWidthBasis.longestLine,
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontSize: 18,
                          ),
                        ),
                      );
                    })),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 10.0,
                  top: 5,
                ),
                child: GestureDetector(
                    child: const Text(
                  "+ Add new Career",
                  style: TextStyle(color: Color(0xff2A5679)),
                )),
              ),
              const SizedBox(
                height: 25,
              ),
              const Text(
                "Location :",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "Country/Reigon",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              TextFormField(
                readOnly: true,
                initialValue: "Syria",
                style: const TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  suffixIcon: const Icon(Icons.remove),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey[500]!)),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey[500]!)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 10.0,
                  top: 5,
                ),
                child: GestureDetector(
                    child: const Text(
                  "Use current location",
                  style: TextStyle(color: Color(0xff2A5679)),
                )),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "Country/Reigon",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              TextFormField(
                readOnly: true,
                initialValue: "Aleppo",
                style: const TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  suffixIcon: const Icon(Icons.remove),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey[500]!)),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey[500]!)),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Contact info",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Add or edit your profile URL , email and more",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                ),
                child: GestureDetector(
                    child: const Text(
                  "Edit contact info",
                  style: TextStyle(color: Color(0xff2A5679)),
                )),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar:
          BottomNav(onTap: (() => Get.toNamed(Routes.getEditContact()))),
    );
  }
}
