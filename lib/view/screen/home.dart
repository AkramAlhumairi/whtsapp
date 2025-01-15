import 'package:flutter/material.dart';
import 'package:whatsapp/view/screen/chats.dart';
import 'package:whatsapp/view/screen/status.dart';
import 'package:whatsapp/view/widget/popbutwidget.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(title: const Text("WhatsApp",
        style: TextStyle(fontSize: 25,
        fontWeight: FontWeight.bold,
        color:Colors.white,
        ),
        ),
        bottom: const TabBar(tabs: [
          Tab(child: Icon(Icons.camera_alt_outlined,color: Colors.white,),
          ),
           Tab(child:const Text("chats",style: TextStyle(color: Colors.white,),),
           ),
           Tab(child: const Text("Status",),
          ),
           Tab(child: const Text("Calls"),
          ),
        ]),
        actions: [
          Popbutwidget(
            firsttext: Text("Setting"),
            sectext: Text("Started MSG"),
            thtext: Text("WhatsApp Web"),
            fourtext: Text("Profile"),
          ),
          IconButton(onPressed: (){}, icon:Icon (Icons.search)),
        ],
        ),
        body:const TabBarView(children: [
           Text("0"),
           chats(),
           status(),
           Text("3"),
        ]),
        

      ),
    );
  }
}