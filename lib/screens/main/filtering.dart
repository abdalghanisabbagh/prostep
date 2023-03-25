
import 'package:flutter/material.dart';

class Filtering extends StatefulWidget {
  const Filtering({super.key}); 

  @override
  State<Filtering> createState() => _FilteringState();
}

class _FilteringState extends State<Filtering> {
  _FilteringState() {
    myInitialItem = listitem[0];
  }
  final listitem = ["item1", "item2", "item3", "item4"];
  String? myInitialItem;
  bool css = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50.0, left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Filtering",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 29, 64, 91),
                  fontSize: 18),
            ),
            const SizedBox(
              height: 12,
            ),
            const Text(
              "Filter about whatever you want! ",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 201, 201, 201),
                  fontSize: 12),
            ),
            const SizedBox(
              height: 25,
            ),
            const Text(
              "Classification",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 29, 64, 91),
                  fontSize: 18),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 50,
              ),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                      color: const Color.fromARGB(50, 42, 86, 121), width: 3),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 18.0, right: 10),
                  child: DropdownButton(
                    underline: const SizedBox(),
                    isExpanded: true,
                    style: const TextStyle(
                      color: Color.fromARGB(255, 29, 64, 91),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    value: myInitialItem,
                    onChanged: (val) {
                      setState(() {
                        myInitialItem = val as String;
                      });
                    },
                    items: listitem.map((valueitem) {
                      return DropdownMenuItem(
                        value: valueitem,
                        child: Text(valueitem),
                      );
                    }).toList(),
                    icon: const Icon(Icons.arrow_drop_down),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            const Text(
              "Specific Classification",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 29, 64, 91),
                  fontSize: 18),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Checkbox(
                  value: css,
                  onChanged: (value) {
                    setState(() {
                      css = value!;
                    });
                  },
                ),
                const Text(
                  "CSS ",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 29, 64, 91),
                      fontSize: 12),
                ),
                const SizedBox(
                  width: 100,
                ),
                Checkbox(
                  value: css,
                  onChanged: (value) {
                    setState(() {
                      css = value!;
                    });
                  },
                ),
                const Text(
                  "CSS ",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 29, 64, 91),
                      fontSize: 12),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Checkbox(
                  value: css,
                  onChanged: (value) {
                    setState(() {
                      css = value!;
                    });
                  },
                ),
                const Text(
                  "CSS ",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 29, 64, 91),
                      fontSize: 12),
                ),
                const SizedBox(
                  width: 100,
                ),
                Checkbox(
                  value: css,
                  onChanged: (value) {
                    setState(() {
                      css = value!;
                    });
                  },
                ),
                const Text(
                  "CSS ",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 29, 64, 91),
                      fontSize: 12),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Checkbox(
                  value: css,
                  onChanged: (value) {
                    setState(() {
                      css = value!;
                    });
                  },
                ),
                const Text(
                  "CSS ",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 29, 64, 91),
                      fontSize: 12),
                ),
                const SizedBox(
                  width: 100,
                ),
                Checkbox(
                  value: css,
                  onChanged: (value) {
                    setState(() {
                      css = value!;
                    });
                  },
                ),
                const Text(
                  "CSS ",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 29, 64, 91),
                      fontSize: 12),
                ),
              ],
            ),
            const SizedBox(
              height:35,
            ),
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left:15.0),
                  child: Text(
                    "Level ",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 29, 64, 91),
                        fontSize: 18),
                  ),
                ),
                SizedBox(
                  width: 135,
                ),
                Text(
                  "Free ? ",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 29, 64, 91),
                      fontSize: 18),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Checkbox(
                  value: css,
                  onChanged: (value) {
                    setState(() {
                      css = value!;
                    });
                  },
                ),
                const Text(
                  "CSS ",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 29, 64, 91),
                      fontSize: 12),
                ),
                const SizedBox(
                  width: 100,
                ),
                Checkbox(
                  value: css,
                  onChanged: (value) {
                    setState(() {
                      css = value!;
                    });
                  },
                ),
                const Text(
                  "CSS ",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 29, 64, 91),
                      fontSize: 12),
                ),
              ],
            ),
              const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Checkbox(
                  value: css,
                  onChanged: (value) {
                    setState(() {
                      css = value!;
                    });
                  },
                ),
                const Text(
                  "CSS ",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 29, 64, 91),
                      fontSize: 12),
                ),]
            ),
              const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Checkbox(
                  value: css,
                  onChanged: (value) {
                    setState(() {
                      css = value!;
                    });
                  },
                ),
                const Text(
                  "CSS ",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 29, 64, 91),
                      fontSize: 12),
                ),]
            ),
            const SizedBox(
              height: 25,
            ),
            Center(
              child: SizedBox(
                width: 150,
                height: 50,
                child: MaterialButton(onPressed: (){},
                color: const Color.fromARGB(255, 29, 64, 91),
                child: const Text("Search",style: TextStyle(
                  color: Color.fromARGB(255, 242, 242, 242),
                  fontSize: 16
                ),),
                ),
              ),
            )
          ],
          
        ),
      ),
    );
  }
}
