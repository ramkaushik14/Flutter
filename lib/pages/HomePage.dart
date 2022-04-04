import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  
  final int hours = 8;
  final String name = "flutter";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("1st trail"),
      ),
      body: Center(
      child: Container(
        child: Text("This is Home Page",style:TextStyle(fontSize: 40),),
        
      ),
    ),
    drawer: Drawer(),
    );
  }
}