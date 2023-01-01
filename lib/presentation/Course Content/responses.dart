import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prostep1/presentation/resources/routes_manger.dart';
import 'package:prostep1/presentation/resources/showDialog.dart';

import '../../domain/comments.dart';

class ResponsesView extends StatefulWidget {
  ResponsesView({super.key, required this.commentId});
  int commentId;
  @override
  State<ResponsesView> createState() => _ResponsesViewState();
}

class _ResponsesViewState extends State<ResponsesView> {
  List<Comments> data = [];

  @override
  void initState() {
    super.initState();

    for (int i = 0; i < commentslist.length; i++) {
      if (commentslist[i]['id'] == widget.commentId.toString()) {
        data.add(Comments.fromJSon(commentslist[i]));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Color(0xff1D405B),
          ),
          onPressed: (() {
            Get.offNamed(Routes.getcomments());
          }),
        ),
        centerTitle: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Question Details",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 18,
            color: Color(
              0xff1D405B,
            ),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: data.reversed.length,
        itemBuilder: (BuildContext context, int index) =>
            _commentsandresponselist(data[index]),
      ),
    );
  }

  Widget _commentsandresponselist(Comments list) {
    print(list.id);
    if (list.name!.isEmpty) {
      return const Text("no responses");
    }
    return Column(
      children: [
        SizedBox(
          width: double.maxFinite,
          height: 200,
          child: Padding(
            padding: const EdgeInsets.only(top: 0.0, left: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: SizedBox(
                        width: 50,
                        height: 50,
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          child: ClipOval(
                            child: Image.network(
                              list.image.toString(),
                              height: 50,
                              width: 50,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: SizedBox(
                        width: 300,
                        height: 50,
                        child: ListTile(
                          title: Text(
                            list.name.toString(),
                            style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600),
                          ),
                          subtitle: Text(
                            "${list.time.toString()} ago ${list.date.toString()}",
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(list.title.toString()),
                const SizedBox(
                  height: 15,
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 10.0),
                  child: Divider(
                    color: Color.fromARGB(50, 42, 86, 121),
                  ),
                ),
              ],
            ),
          ),
        ),
        Column(
          children: list.responses.map(_commentsandresponselist).toList(),
        ),
      
      ],
    );
  }
}
