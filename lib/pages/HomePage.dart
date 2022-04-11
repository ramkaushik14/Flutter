import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/models/catalog.dart';
import 'package:flutter_application_1/widgets/drawer.dart';

import '../widgets/item_widget.dart';

class HomePage extends StatefulWidget {
  
  @override
  State<HomePage> createState() => _HomePageState();

  
}

class _HomePageState extends State<HomePage> {
  final int hours = 8;

  final String name = "flutter";

  

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  loadData () async
  {
    final catalogJson = await rootBundle.loadString("assests/files/catalog.json");
    final decodeJson = jsonDecode(catalogJson);
    var productData = decodeJson["products"];
    catalog_Model.items = List.from(productData).map<Item>((item) => Item.fromMap(item)).toList();
    //set state to reload new items
    setState(() {
      
    });
  }

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
          itemCount: catalog_Model.items.length,
          itemBuilder: (context, index){
            return itemWidget(item:catalog_Model.items[index]);
          },
        ),
      ),

    drawer: MyDrawer(),
    );
  }
}