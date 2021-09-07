import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 30,
      ),
      title: Text("Me",style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
      subtitle: Row(children: [Icon(Icons.done_all), SizedBox(width: 5,) ,Text("Hi, this is a new app!", style: TextStyle(fontSize: 13),),],),
      trailing: Text("18:04"),
    );
  }
}
