import 'package:flutter/material.dart';
import 'package:template/model/chat_model.dart';

class IndividualChat extends StatefulWidget {

  var chatModel;
  IndividualChat(ChatModel chatModel, {Key? key}) : super(key: key);


  @override
  _IndividualChatState createState() => _IndividualChatState();
}

class _IndividualChatState extends State<IndividualChat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Row(
          children: [
            Icon(Icons.arrow_back),
            CircleAvatar(radius: 20, backgroundColor: Colors.blueGrey,)
          ],
        ),
      ),
    );
  }
}
