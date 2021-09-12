import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:template/model/chat_model.dart';

class IndividualChat extends StatefulWidget {
  ChatModel _chatModel;
  IndividualChat(this._chatModel);

  @override
  _IndividualChatState createState() => _IndividualChatState();
}

Widget chatBody(context) {
  return Container(
    height: MediaQuery.of(context).size.height,
    width: MediaQuery.of(context).size.width,
    child: Stack(
      alignment: Alignment.bottomCenter,
      children: [
        ListView(),
        Row(
          children: [
            Container(
                width: MediaQuery.of(context).size.width - 55,
                child: Card(
                    margin: EdgeInsets.only(left: 2, right: 2, bottom: 8),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                    child: TextFormField(
                      textAlignVertical: TextAlignVertical.center,
                      keyboardType: TextInputType.multiline,
                      maxLines: 5,
                      minLines: 1,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Type a message",
                        prefixIcon: IconButton(
                          icon: Icon(Icons.emoji_emotions),
                          onPressed: () {},
                        ),
                        suffixIcon: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.attach_file)),
                            IconButton(
                                onPressed: () {}, icon: Icon(Icons.camera_alt))
                          ],
                        ),
                        contentPadding: EdgeInsets.all(5),
                      ),
                    ))),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0, right: 5),
              child: CircleAvatar(
                backgroundColor: Color(0xff128c7e),
                radius: 25,
                child: IconButton(
                  icon: Icon(Icons.mic),
                  onPressed: () {},
                ),
              ),
            )
          ],
        ),
      ],
    ),
  );
}

class _IndividualChatState extends State<IndividualChat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        titleSpacing: 10,
        leadingWidth: 70,
        leading: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back,
                  size: 24,
                )),
            CircleAvatar(
              child: SvgPicture.asset(
                widget._chatModel.isGroup
                    ? "assets/groups.svg"
                    : "assets/person.svg",
                color: Colors.white,
                height: 36,
              ),
              radius: 20,
              backgroundColor: Colors.blueGrey,
            )
          ],
        ),
        title: InkWell(
          onTap: () {},
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget._chatModel.name,
                style: TextStyle(fontSize: 18.5, fontWeight: FontWeight.bold),
              ),
              Text(
                "Last seen today at ${widget._chatModel.time}",
                style: TextStyle(fontSize: 13),
              )
            ],
          ),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.videocam)),
          IconButton(onPressed: () {}, icon: Icon(Icons.call)),
          PopupMenuButton(onSelected: (val) {
            print(val);
          }, itemBuilder: (context) {
            return [
              PopupMenuItem(
                child: Text("View Contact"),
                value: "View Contact",
              ),
              PopupMenuItem(
                child: Text("Media, links, and docs"),
                value: "Media, links, and docs",
              ),
              PopupMenuItem(
                child: Text("Search"),
                value: "Search",
              ),
              PopupMenuItem(
                child: Text("Mute Notifications"),
                value: "Mute Notifications",
              ),
              PopupMenuItem(
                child: Text("More"),
                value: "More",
              ),
            ];
          })
        ],
      ),
      body: chatBody(context),
    );
  }
}
