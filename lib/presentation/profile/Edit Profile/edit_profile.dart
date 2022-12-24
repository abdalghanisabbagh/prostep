import 'package:drop_down_list/drop_down_list.dart';
import 'package:drop_down_list/model/selected_list_item.dart';
import 'package:flutter/material.dart';

import 'package:prostep1/presentation/profile/Edit%20Profile/widgets/title_text_filed.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
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
          "Edit Profile",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 18,
            color: Color(
              0xff1D405B,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          TitleTextFiled(
            title: "First name *:",
            text: "Farah",
          ),
          TitleTextFiled(
            title: "Last name *:",
            text: "Touma",
          ),
          TitleTextFiled(
            title: "Career *:",
            text: "UI/UX",
            onTap: () {
              FocusScope.of(context).unfocus();
              onTextFieldTap();
            },
            readOnly: true,
          ),
        ],
      ),
    );
  }
}
