import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_project/controllers/controller_getx.dart';

class HomePageGetX extends StatefulWidget {

  const HomePageGetX({ Key? key }) : super(key: key);

  @override
  State<HomePageGetX> createState() => _HomePageGetXState();
}

class _HomePageGetXState extends State<HomePageGetX> {
  final HomePageGetXController homePageGetXController = Get.put(HomePageGetXController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomePageGetXController>(builder: (_){
      return Scaffold(
      appBar: AppBar(
        title: Text("Implementação GetX ${homePageGetXController.number}"),),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(20)
              ),
              child: TextButton(
                onPressed: (){
                  homePageGetXController.changeToOne();
                }, 
                child: Text("Botão 1", style: TextStyle(color: Colors.white),)),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 15),
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(20)
              ),
              child: TextButton(
                onPressed: (){
                  homePageGetXController.changeToTwo();
                }, 
                child: Text("Botão 2", style: TextStyle(color: Colors.white),)),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(20)
              ),
              child: TextButton(
                onPressed: (){
                  homePageGetXController.changeToThree();
                }, 
                child: Text("Botão 3", style: TextStyle(color: Colors.white),)),
            )
          ],
        ),
      ),
    );
    });
  }
}