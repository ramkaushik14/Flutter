import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  
  final int hours = 8;
  final String name = "flutter";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Trike",textAlign: TextAlign.center,textScaleFactor: 1.7,),
        
        
        //titleTextStyle: TextStyle()),
        
      ),
      body: Center(
      child: Container(
        child: Text("This is Home Page",style:TextStyle(fontSize: 40),),
        
      ),
    ),
    drawer: MyDrawer(),
    );
  }
}