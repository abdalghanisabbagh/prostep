import 'package:flutter/material.dart';

class CustemDropDown extends StatelessWidget {
  CustemDropDown(
      {super.key, required this.items, required this.title, required this.i});
  List<String> items;
  String title;
  int i;
  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              color: Colors.grey,
            ),
          ),
          Container(
            margin: EdgeInsets.all(0),
            width: double.maxFinite,
            child: DropdownButton(
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),

                // Initial Value
                value: items[i],

                // Down Arrow Icon
                icon: const Padding(
                  padding: EdgeInsets.only(left: 130),
                  child: Icon(
                    Icons.keyboard_arrow_down,
                    color: Colors.black,
                  ),
                ),

                // Array list of items
                items: items.map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Text(items),
                  );
                }).toList(),
                // After selecting the desired option,it will
                // change button value to selected value
                onChanged: (value) {
                  print(value);
                }),
          ),
        ]);
  }
}
