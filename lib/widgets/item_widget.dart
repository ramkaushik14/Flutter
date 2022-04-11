import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/catalog.dart';

class itemWidget extends StatelessWidget {

  final Item item;

  const itemWidget({Key? key, required this.item}) 
          :assert(item !=null), 
          super(key: key);


  @override
  Widget build(BuildContext context) {
    return Card(

      child: ListTile(
        
        leading: Image.asset(item.image),

        title: Text(item.name,
                  style: 
                  TextStyle(
                    fontWeight: FontWeight.bold,
                    ),
                  textScaleFactor: 1.2,),


        subtitle: Text(item.runtime),

        
        trailing: Text(
                  "Rupees ${item.price}",
                  style: 
                  TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.purple),
                  textScaleFactor: 1.2,
                  ),
        
      ),
    );
  }
}