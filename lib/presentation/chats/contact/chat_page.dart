import 'package:flutter/material.dart';
import 'package:prostep1/presentation/chats/contact/widget/message_tile.dart';
import 'package:prostep1/presentation/resources/main_appBar.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({
    Key? key,
  }) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  // Stream<QuerySnapshot>? chats;
  TextEditingController messageController = TextEditingController();
  String admin = "";
  List<Map<String, dynamic>> massge = [
    {
      'massge': 'Lorem kmek  kkskkkkl kmlmkl mkd k  kdmkml',
      'me': false,
    },
    {
      'massge': 'Lorem kmek kkkkkkkkkkkk  ',
      'me': true,
    },
    {
      'massge': 'kkkkkkkkkkk  ',
      'me': true,
    },
    {
      'massge': 'Lorem kmek  kkskkkkl kmlmkl mkd k  kdmkml',
      'me': false,
    },
  ];
  @override
  void initState() {
    // getChatandAdmin();
    super.initState();
  }

  // getChatandAdmin() {
  //   DatabaseService().getChats(widget.groupId).then((val) {
  //     setState(() {
  //       chats = val;
  //     });
  //   });
  //   DatabaseService().getGroupAdmin(widget.groupId).then((val) {
  //     setState(() {
  //       admin = val;
  //     });
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(75),
          child: mainAppBar(
            text: "Abdo",
            icon: const Icon(
              Icons.arrow_back,
              color: Color(0xff1D405B),
            ),
            ontap: () {},
          )),
      body: Stack(
        children: <Widget>[
          // chat messages here
          // chatMessages(),
          ListView.builder(
            itemCount: massge.length,
            itemBuilder: (context, index) {
              return MessageTile(
                  message: massge[index]['massge'],
                  sender: "snapshot.data.docs[index]['sender']",
                  sentByMe: massge[index]['me']);
            },
          ),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            color: Color(0xffEEF1F4), borderRadius: BorderRadius.circular(25)),
        margin: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
        padding: EdgeInsets.all(8),
        child: Row(children: [
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Color(0xff1D405B),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Icon(
              Icons.camera_alt_outlined,
              color: Colors.white,
            ),
          ),
          Expanded(
              child: TextFormField(
            controller: messageController,
            style: const TextStyle(color: Colors.white),
            decoration: InputDecoration(
              enabledBorder: InputBorder.none,
              hintStyle: TextStyle(color: Colors.white, fontSize: 16),
              border: InputBorder.none,
            ),
          )),
          const SizedBox(
            width: 12,
          ),
          GestureDetector(
            onTap: () {
              sendMessage();
            },
            child: const Icon(
              Icons.mic_none,
              color: Color(0xff1D405B),
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          GestureDetector(
            onTap: () {
              sendMessage();
            },
            child: const Icon(
              Icons.image,
              color: Color(0xff1D405B),
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          GestureDetector(
            onTap: () {
              sendMessage();
            },
            child: const Icon(
              Icons.send,
              color: Color(0xff1D405B),
            ),
          ),
        ]),
      ),
    );
  }

  chatMessages() {
    ListView.builder(
      itemCount: 2,
      itemBuilder: (context, index) {
        return MessageTile(
            message: "Lorem kmek  kkskkkkl kmlmkl mkd k  kdmkml",
            sender: "snapshot.data.docs[index]['sender']",
            sentByMe: true);
      },
    );
  }

  sendMessage() {
    if (messageController.text.isNotEmpty) {
      Map<String, dynamic> chatMessageMap = {
        "message": messageController.text,
        "sender": " widget.userName",
        "time": DateTime.now().millisecondsSinceEpoch,
      };

      // DatabaseService().sendMessage(widget.groupId, chatMessageMap);
      setState(() {
        messageController.clear();
      });
    }
  }
}
