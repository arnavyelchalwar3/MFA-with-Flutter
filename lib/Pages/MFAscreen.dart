import 'dart:math';

import 'package:flutter/material.dart';
import 'package:multi_factor_autentication_page/Pages/dashboardScreen.dart';
import 'package:multi_factor_autentication_page/Pages/loginPage.dart';
import 'dashboardScreen.dart';

class Mfascreen extends StatefulWidget {
  const Mfascreen({super.key});

  @override
  State<Mfascreen> createState() => _MfascreenState();
}

class _MfascreenState extends State<Mfascreen> {
  var typeText = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(230, 240, 255, 1.0),
      appBar: AppBar(
        title: Text(
          "MFA Required",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 100, left: 50, right: 50),
          child: Container(
            height: 400,
            width: 750,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white, // background color of the box
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: 10, // softness of the shadow
                  spreadRadius: 2, // how far the shadow spreads
                  offset: Offset(4, 4),
                ),
              ], // rounded corners
              border: Border.all(
                //color: Colors.black, // border color
                width: 0, // border width
                // border width
                style: BorderStyle.solid, // border style
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/icons/lock.png',
                  height: 100,
                  width: 100,
                ),
                SizedBox(height: 10),
                Text(
                  "Security Question",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text("What is your favorite vacation spot....?"),
                SizedBox(height: 20),
                TextField(
                  controller: typeText,
                  decoration: InputDecoration(
                      labelText: ' Your Answer',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      )),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    minimumSize: const Size(390, 60),
                  ),
                  onPressed: () {
                    var textField = typeText.text;

                    if (textField == "Paris") {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Dashboardscreen()),
                      );
                    } else {
                      // Show error message

                      Text("Incorrect Answer");
                    }

                    // if (typeText.text == "Paris") {
                    //   Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => Dashboardscreen()),
                    //   );
                    // } else {
                    //   // Show error message
                    //   Text("Incorrect Answer");
                    // }
                  },
                  child: const Text('Submit',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        //fontWeight: FontWeight.bold,
                      )),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(left: 80),
                  child: Text(
                    "Login with OTP?",
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontSize: 15,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
