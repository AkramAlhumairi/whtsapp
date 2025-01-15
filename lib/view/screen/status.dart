import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsapp/lists/liststatus.dart';
import 'package:whatsapp/view/widget/popbutwidget.dart';
import 'package:whatsapp/view/widget/storywidget.dart';

class status extends StatelessWidget {
  const status({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height; //يمتدد مكان الحالات
    return Column(
      children: [
        ListTile(
          title: Text(
            "My Status",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text("tab to add"),
          leading: Icon(
            Icons.person_pin,
            color: Colors.grey,
            size: 50,
          ),
          trailing: Popbutwidget(
            firsttext: Text("Add Status"),
            sectext: Text("Delete Status"),
            thtext: Text("Show My Status"),
            fourtext: Text("Hide"),
          ),
        ),
        Container(
          padding: EdgeInsets.all(5),
          height: 40,
          color: Color(0xffe8eae9),
          width: double.infinity,
          child: Text(
            "Recent Updates",
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Color(0xff075e54)),
          ),
        ),
        Container(
          height: height * 0.60,
          child: ListView.builder(
              itemCount: liststatus.length,
              itemBuilder: (context, i) {
                return ListTile(
                  // onTap: () {
                  //   Get.to(Storywidget(url: liststatus[i].image,username: liststatus[i].name,));//حق اظهار الحالة
                  // },
                  title: Text(
                    liststatus[i].name,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(liststatus[i].time),
                  leading: CircleAvatar(
                    radius: 25.5,
                    // foregroundDecoration: BoxDecoration(
                    //   shape: BoxShape.circle,
                    //   border: Border.all(color:Colors.blue,width: 3),
                    // ),

                    backgroundImage: NetworkImage(liststatus[i].image),
                  ),
                );
              }),
        )
      ],
    );
  }
}
