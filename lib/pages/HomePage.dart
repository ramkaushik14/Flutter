import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/catalog.dart';
import 'package:flutter_application_1/widgets/drawer.dart';

import '../widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  
  final int hours = 8;
  final String name = "flutter";
  final dummylist = List.generate(20, (index)=>catalog_Model.items[0]);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Trike",textAlign: TextAlign.center,textScaleFactor: 1.7,),
        
        
        //titleTextStyle: TextStyle()),
        
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: dummylist.length,
          itemBuilder: (context, index){
            return itemWidget(item:dummylist[index]);
          },
        ),
      ),

    drawer: MyDrawer(),
    );
  }
}