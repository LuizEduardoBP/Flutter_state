import 'package:flutter/material.dart';
import 'package:state_project/home_page_getx.dart';
import 'package:state_project/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/home",
      routes: {
        "/home": (context)=>HomePage(),
        "/getx": (context)=>HomePageGetX()
      },
    );
  }
}

