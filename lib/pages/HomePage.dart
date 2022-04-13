
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/models/catalog.dart';
import 'package:flutter_application_1/widgets/drawer.dart';

import '../widgets/item_widget.dart';
import 'package:velocity_x/velocity_x.dart';

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
      //backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              headerHome(),
              catalogList().expand(),
      
          ],),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}

//HEADER STL

class headerHome extends StatelessWidget {
  const headerHome({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Vx.m32 ,
          child: Column(
            crossAxisAlignment:CrossAxisAlignment.start,
            children: [
              
              "Catalog".text.xl5.bold.make(),
              "Select one from below to book a ride".text.xl.make(),
          ]
          ),
      
    );
  }
}

//CATALOG LIST
class catalogList extends StatelessWidget {
  const catalogList({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: catalog_Model.items.length,
      itemBuilder: (context,index)
      { final catalog = catalog_Model.items[index];
        return CatalogItem(catalog:catalog);
      },
      
    );
  }
}

//CATALOG ITEM
class CatalogItem extends StatelessWidget {
  final Item catalog;

  const CatalogItem({Key? key, required this.catalog}) :assert(catalog!=null), super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxBox(
      child: Row(
        children: [
          Image.asset(catalog.image).box.make().p8(),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                catalog.name.text.bold.xl.make(),
                catalog.runtime.text.make(),
                ButtonBar(
                  buttonPadding: EdgeInsets.zero,
                  alignment: MainAxisAlignment.spaceBetween,
                  children: [
                    "Rupees ${catalog.price}".text.bold.lg.make(),
                    ElevatedButton(onPressed: () {} , child: "BOOK".text.make())
                  ],
                )
                

              ],
              )
          )
        ],

      )
      
    ).white.square(200).make().py16();
  }
}