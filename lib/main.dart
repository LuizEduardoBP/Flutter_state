import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:state_project/controllers/controller_cubit.dart';
import 'package:state_project/controllers/controller_provider.dart';
import 'package:state_project/home_page_getx.dart';
import 'package:state_project/home_page_provider.dart';
import 'package:state_project/homepage.dart';

import 'home_page_cubit.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/home",
      routes: {
        "/home": (context)=>HomePage(),
        "/getx": (context)=>HomePageGetX(),
        "/provider": (context)=> ChangeNotifierProvider(
          create: (_)=>HomePageProviderController(),
          child: HomePageProvider(),),
        "/cubit": (context)=> BlocProvider(
          create: (_)=>CubitValue(),
          child: HomePageCubit(),
          )
      },
    );
  }
}

