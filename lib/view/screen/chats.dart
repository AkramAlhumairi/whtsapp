import 'package:flutter/material.dart';
import 'package:whatsapp/lists/listchats.dart';

class chats extends StatelessWidget {
  const chats({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: listchats.length,
        itemBuilder: (context, i) {
          return ListTile(
            title: Text(listchats[i].name),
            subtitle: Text(listchats[i].msg),
            trailing: Text(listchats[i].time),



            leading:CircleAvatar(
              radius: 30.5,
              backgroundImage:NetworkImage(listchats[i].image),)
 
          );
        });
  }
}
