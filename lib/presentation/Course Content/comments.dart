import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prostep1/domain/comments.dart';
import 'package:prostep1/presentation/Course%20Content/responses.dart';

class CommentsView extends StatefulWidget {
  const CommentsView({super.key});

  @override
  State<CommentsView> createState() => _CommentViewsState();
}

class _CommentViewsState extends State<CommentsView> {
  List<Comments> data = [];
  @override
  void initState() {
    super.initState();
    commentslist.forEach((element) {
      data.add(Comments.fromJSon(element));
    });
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
            onPressed: () {}),
        centerTitle: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Comments",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 18,
            color: Color(
              0xff1D405B,
            ),
          ),
        ),
      ),
      body: Container(
        height: 200 * data.length.toDouble(),
        width: double.maxFinite,
        child: ListView.builder(
          itemCount: data.length,
          itemBuilder: (BuildContext context, int index) =>
              _commentslist(data[index]),
        ),
      ),
    );
  }

  Widget _commentslist(Comments list) {
    return Padding(
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
                          color: Colors.black, fontWeight: FontWeight.w600),
                    ),
                    subtitle: Text(
                      "${list.time.toString()} ago ${list.date.toString()}",
                    ),
                    trailing: Text(
                      "Lecture ${list.numlecture.toString()}",
                      style: const TextStyle(
                          color: Color.fromARGB(255, 42, 86, 121),
                          fontWeight: FontWeight.w700),
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
          InkWell(
            onTap: () {
              Get.off(const ResponsesView());
            },
            child: Text(
              "${list.numresponse.toString()} response",
              style: const TextStyle(
                  color: Color.fromARGB(255, 42, 86, 121),
                  fontWeight: FontWeight.w700),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: Divider(
              color: Color.fromARGB(50, 42, 86, 121),
            ),
          )
        ],
      ),
    );
  }
}
