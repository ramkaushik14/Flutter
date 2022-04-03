import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/HomePage.dart';
import 'package:flutter_application_1/pages/Login.dart';


void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.purple),

      //darkTheme: ThemeData(brightness: Brightness.dark),//for dark mode chnage thememode to dark and uncomment this

      initialRoute: "/login", //this route will open when app opens, like a default route
      routes: {
        "/": (context) => LoginPage(),
        "/home":(context) => HomePage(),
        "/login":(context) => LoginPage()
      },
    );
  }
}