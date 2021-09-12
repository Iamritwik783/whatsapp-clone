import 'package:flutter/material.dart';
import 'package:template/CustomUI/custom_card.dart';
import 'package:template/model/chat_model.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<ChatModel> _chats = [
    ChatModel("Me", "person.svg", false, "4:00", "Hello World!"),
    ChatModel("Anup", "person.svg", false, "4:00", "Hello World!"),
    ChatModel("Sohom", "person.svg", false, "4:00", "Hello World!"),
    ChatModel("CTS", "person.svg", true, "4:00", "Hello World!"),
    ChatModel("Me", "person.svg", false, "4:00", "Hello World!"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.chat),
      ),
      body: ListView.builder(
        itemCount: _chats.length,
        itemBuilder: (context, index)=>CustomCard(_chats[index])),
    );
  }
}
