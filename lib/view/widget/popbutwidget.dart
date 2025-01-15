import 'package:flutter/material.dart';

class Popbutwidget extends StatelessWidget {
  Widget? firsttext;
  Widget? sectext;
  Widget? thtext;
  Widget? fourtext;
   Popbutwidget({Key? key,this.firsttext,this.sectext,this.thtext,this.fourtext}): super (key:key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
        itemBuilder: (context) =>  [
              PopupMenuItem(
                child: firsttext,
                value: 'setting',
              ),
              PopupMenuItem(
                child: sectext,
                value: 'Started',
              ),
              PopupMenuItem(
                child: thtext,
                value: 'Whatsapp Web',
              ),
              PopupMenuItem(
                child: fourtext,
                value: 'New Groub',
              ),
            ]);
  }
}
