

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class LoginPage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Image.asset("assests/images/login_page.png",fit: BoxFit.cover),

          SizedBox(
            height: 40.0,
          ),

          Text(
            "Welcome",
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
                    hintText: "Enter mail id",
                    labelText: "Mail Id"
                  ),
                ),


                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Enter Phone Number",
                    labelText: "Phone Number"
                  ),
                ),

                TextFormField(
                  obscureText:true,
                  decoration: InputDecoration(
                    hintText: "Enter Passowrd",
                    labelText: "Password"
                  ),
                ),


                SizedBox(
                height: 20.0,
                ),

                ElevatedButton(
                  onPressed: (){},
                  child: Text("Register")),
                  
              ],
            ),
          )

        ],
      )
      
    );
  }
}