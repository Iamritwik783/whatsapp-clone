import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:template/Pages/individual_chat.dart';
import 'package:template/model/chat_model.dart';

class CustomCard extends StatelessWidget {
  ChatModel _chatModel;
  CustomCard(this._chatModel);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=>IndividualChat(_chatModel)));
      },
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              child: SvgPicture.asset(
                _chatModel.isGroup? "assets/groups.svg": "assets/person.svg",
                color: Colors.white,
                height: 36,
              ),
              backgroundColor: Colors.blueGrey,
              radius: 30,
            ),
            title: Text(
              _chatModel.name,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            subtitle: Row(
              children: [
                Icon(Icons.done_all),
                SizedBox(
                  width: 5,
                ),
                Text(
                  _chatModel.currentMessage,
                  style: TextStyle(fontSize: 13),
                ),
              ],
            ),
            trailing: Text(_chatModel.time),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 80, right: 20),
            child: Divider(
              thickness: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}
