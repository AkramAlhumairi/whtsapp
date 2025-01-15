import 'package:flutter/material.dart';
import 'package:whatsapp/view/screen/home.dart';
// import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: AppBarTheme(backgroundColor: Color(0xff075e54))),

        home: Home() ,
        
    
    );

  }
}

class GetMaterialApp {
}
