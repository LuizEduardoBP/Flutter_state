import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_project/controllers/controller_provider.dart';

class HomePageProvider extends StatefulWidget {
  const HomePageProvider({ Key? key }) : super(key: key);

  @override
  _HomePageProviderState createState() => _HomePageProviderState();
}

class _HomePageProviderState extends State<HomePageProvider> {
  @override
  Widget build(BuildContext context) {
    final controllerProvider = Provider.of<HomePageProviderController>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Implementação Provider ${controllerProvider.number}"),
        leading: GestureDetector(
          onTap: (){
            Navigator.popAndPushNamed(context, "/home");
          },
          child: Icon(Icons.close)),
        ),
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
                  controllerProvider.changeToOne();
                }, 
                child: Text("Botão 1", style: TextStyle(color: Colors.white),)),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(20)
              ),
              child: TextButton(
                onPressed: (){
                  controllerProvider.changeToTwo();
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
                  controllerProvider.changeToThree();
                }, 
                child: Text("Botão 3", style: TextStyle(color: Colors.white),)),
            ),
            
          ],
        ),
      ),
    );
  }
}