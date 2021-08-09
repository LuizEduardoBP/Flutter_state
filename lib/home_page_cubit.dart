import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';
import 'package:state_project/controllers/controller_cubit.dart';

class HomePageCubit extends StatefulWidget {
  const HomePageCubit({ Key? key }) : super(key: key);

  @override
  _HomePageCubitState createState() => _HomePageCubitState();
}

class _HomePageCubitState extends State<HomePageCubit> {
  @override
  Widget build(BuildContext context) {
    final cubitValue = context.select((CubitValue cubit) => cubit.state);

    return Scaffold(
      appBar: AppBar(
        title: Text("Implementação Cubit $cubitValue"),
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
                  context.read<CubitValue>().changeToOne();
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
                  context.read<CubitValue>().changeToTwo();
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
                  context.read<CubitValue>().changeToThree();
                }, 
                child: Text("Botão 3", style: TextStyle(color: Colors.white),)),
            ),
            
          ],
        ),
      ),
    );
  }
}