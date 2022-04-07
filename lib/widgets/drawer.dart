import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class MyDrawer extends StatelessWidget {
  const MyDrawer({ Key? key }) : super(key: key);

  final Image_url="https://support.hubstaff.com/wp-content/uploads/2019/08/good-pic.png";

  @override
  Widget build(BuildContext context) {
    return Drawer(
      
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          
          DrawerHeader(padding: EdgeInsets.zero,child: UserAccountsDrawerHeader(
            margin: EdgeInsets.zero,
            accountName: Text("Ram Kaushik"),
            accountEmail: Text("ramkaushik@gmail.com"),
            currentAccountPicture: CircleAvatar(backgroundImage: NetworkImage(Image_url),backgroundColor: Colors.blue,),
          )
          ),

          
          ListTile(
            leading: Icon(
              CupertinoIcons.home,
              color:Colors.purple,
            ),
            title: Text(
              "Home",
              style: TextStyle(
                fontSize: 18,
                color: Colors.black
              ),
            ),
          ),

          ListTile(
            
            leading: Icon(
              CupertinoIcons.profile_circled,
              color: Colors.purple,
            ),
            title: Text(
              
              "About us",
              style: TextStyle(
                fontSize: 18,
                color: Colors.black
                
              ),
            ),
          )
        ],
      ),
      
    );
  }
}