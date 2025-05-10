import 'package:flutter/material.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          const Color.fromRGBO(230, 240, 255, 1.0) // Light pastel blue
      ,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 80, right: 50, left: 50),
          child: Align(
            alignment: Alignment.topCenter,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 90,
                  width: 90,
                  child: Image.asset('assets/images/vk.png'),
                ),
                const SizedBox(height: 10),
                // Space between image and text

                Align(
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    //MainAxisAlignment: MainAxisAlignment.start,
                    "Sign in to your Account",
                    style: TextStyle(
                        fontSize: 35,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 10),
                Align(
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    "Enter Your Eamil and Password for Login",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(1.0),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(1.0),
                    ),
                  ),
                ),
                const SizedBox(height: 15),

                Padding(
                  padding: const EdgeInsets.only(left: 150),
                  child: Text(
                    "Forget Password?",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      //decoration: TextDecoration.underline,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    minimumSize: const Size(380, 50),
                  ),
                  onPressed: () {},
                  child: const Text('Login',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        //fontWeight: FontWeight.bold,
                      )),
                ),
                const SizedBox(height: 15),
                Text("_____________________OR____________________"),
                const SizedBox(height: 15),

                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    minimumSize: const Size(380, 50),
                  ),
                  label: Text(
                    "Contiune  with Google",
                    style: const TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onPressed: () {},
                  icon: Image.asset(
                    'assets/icons/google.png',
                    height: 20,
                    width: 20,
                  ),
                ),
                const SizedBox(height: 15),
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    minimumSize: const Size(380, 50),
                  ),
                  onPressed: () {},
                  label: Text(
                    "Contiune  with Meta",
                    style: const TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  icon: Image.asset(
                    "assets/icons/meta.png",
                    height: 20,
                    width: 20,
                  ),
                ),
                const SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.only(top: 90),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 50, right: 0),
                        child: Text("Don't have an account ?",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              //fontWeight: FontWeight.bold,
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5.0),
                        child: Text(
                          "signup",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      //const SizedBox(width: 50),
                    ],
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
