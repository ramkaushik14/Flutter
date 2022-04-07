

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/HomePage.dart';
import 'package:flutter_application_1/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';


class LoginPage extends StatefulWidget {
  

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changed = false;
  final _formkey = GlobalKey<FormState>(); 

  moveToHome(BuildContext context) async
  {
    if(_formkey.currentState!.validate())
    {
      setState(() {
        changed = true;
      });

      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context,MyRoutes.homeRoute);
      setState(() {
        changed = false;
      });
    }
    
    
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              Image.asset("assests/images/login_page.png",fit: BoxFit.cover),
              
              SizedBox(
                height: 40.0,
              ),
              
              Text(
                "Welcome $name",
                style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                fontFamily: GoogleFonts.lato().fontFamily,
              ),
              ),
              
              SizedBox(
                height: 30.0,
              ),
              
              
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 32.0,horizontal: 32.0),
                
                  child: Column(
                    children: [
                
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "Enter name",
                          labelText: "Username"
                        ),
                        validator: (value){
                          if(value!.isEmpty)
                          {
                            return "Username cannot be empty";
                          }
                          else
                            return null;
                        },
                        onChanged: (value){
                          name = value;
                          setState(() {
                            
                          });
                        },
                      ),
                
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "Enter mail id",
                          labelText: "Mail Id"
                        ),
                        validator: (value){
                          if(value!.isEmpty)
                          {
                            return "Email is compulsory";
                          }
                          else
                          {
                            return null;
                          }
                        },
                      ),
                      
                      
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "Enter Phone Number",
                          labelText: "Phone Number"
                        ),
                        validator: (value)
                        {
                          if(value!.isEmpty)
                          {
                            return "Phone Number cannot be empty";
                          }
                          else
                          {
                            return null;
                          }
                        },
                      ),
                      
                      TextFormField(
                        obscureText:true,
                        decoration: InputDecoration(
                          hintText: "Enter Passowrd",
                          labelText: "Password"
                        ),
                        validator: (value)
                        {
                          if(value!.isEmpty)
                          {
                            return "Passowrd is compulsory";
                          }
                          else
                          {
                            return null;
                          }
                        },
                      ),
                      
                      
                      SizedBox(
                      height: 20.0,
                      ),
                      
                      Material(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(changed?50:10),
                        child: InkWell(
                          onTap: () =>moveToHome(context),
                          child: AnimatedContainer(
                            
                            duration: Duration(seconds: 1),
                            width: changed?50:150,
                            height: 40,
                            
                            alignment: Alignment.center,
                            child: changed?Icon(Icons.done,color: Colors.white,):Text(
                              "Register",
                              style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),
                            ),
                            
                          ),
                        ),
                      )
                
                      // ElevatedButton(
                      //   onPressed: (){
                      //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                      //   },//Navigator.push(context, MaterialPageRoute(builder: (context => Homepage()),)),
                      //   child: Text("Register")),
                        
                    ],
                  ),
                ),
              
              
            ],
          ),
        ),
      )
      
    );
  }
}