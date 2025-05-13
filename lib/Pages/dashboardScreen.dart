import 'package:flutter/material.dart';
import 'package:multi_factor_autentication_page/Pages/BankingAppScreen.dart';
import 'package:multi_factor_autentication_page/Pages/loginPage.dart';
import 'DummyScreen.dart';
import 'loginPage.dart';

class Dashboardscreen extends StatefulWidget {
  const Dashboardscreen({super.key});

  @override
  State<Dashboardscreen> createState() => _DashboardscreenState();
}

class _DashboardscreenState extends State<Dashboardscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Dashboard"),
          backgroundColor: Color.fromRGBO(51, 186, 255, 1.0),
          actions: [
            IconButton(
              icon: Icon(Icons.logout),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => Loginpage()),
                );
                // Handle logout action here
              },
            ),
          ]),
      drawer: Drawer(),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Align(
          alignment: Alignment.topCenter,
          child: Column(
            children: [
              Container(
                width: 370,
                height: 160,
                //color: Colors.white,
                padding: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.white, // background color of the box
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blueGrey.withOpacity(0.4),
                      blurRadius: 10, // softness of the shadow
                      spreadRadius: 2, // how far the shadow spreads
                      offset: Offset(4, 4),
                    ),
                  ], // rounded corners
                  border: Border.all(
                      //color: Colors.black, // border color
                      width: 0,
                      // border width
                      style: BorderStyle.solid // border style
                      ),
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Account Holder",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Jhon Doe",
                              style: TextStyle(
                                fontSize: 17,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Account Number",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          Text("1234567890"),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Branch ",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              Text("Download Branch"),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Balance",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Text(
                                    '\$12,340.50',
                                    style: TextStyle(
                                      color: Colors.green,
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      )
                    ]),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                  width: 370,
                  height: 220,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(126, 52, 177, 2.0),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "VISA",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: Text("***  ****  ****  1234 ",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              )),
                        ),
                      ),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(16),
                                child: Text(
                                  "John Doe",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 18),
                                child: Text(
                                  "12/26",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  )),
              SizedBox(
                height: 25,
              ),
              Column(
                children: [
                  SizedBox(
                    height: 200,
                    child: GridView.count(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      crossAxisCount: 4,
                      mainAxisSpacing: 20,
                      children: [
                        _buildIcon(Icons.account_balance, "Bank"),
                        _buildIcon(Icons.credit_card, "Cards"),
                        _buildIcon(Icons.payment, "Pay"),
                        _buildIcon(Icons.show_chart, "Invest"),
                        _buildIcon(Icons.support_agent, "Suport"),
                        _buildIcon(Icons.settings, "Settings"),
                        _buildIcon(Icons.qr_code, "Scan"),
                        _buildIcon(Icons.more_horiz, "More"),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_balance_wallet,
            ),
            label: 'Accounts',
            //color: Colors.black,
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.send,
              color: Color.fromARGB(255, 121, 107, 107),
            ),
            label: 'Fund Transfer',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.receipt,
              color: Color.fromARGB(255, 101, 93, 93),
            ),
            label: 'Bill Payment',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.photo_camera,
              color: Color.fromARGB(255, 101, 93, 93),
            ),
            label: 'Check Deposit',
          ),
        ],
      ),
    );
  }
}

Widget _buildIcon(IconData icon, String label) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      Container(
        width: 55,
        height: 55,
        decoration: BoxDecoration(
          color: Colors.blue.shade100,
          shape: BoxShape.circle,
        ),
        child: Icon(
          icon,
          color: Colors.blue.shade700,
          size: 24,
        ),
      ),
      const SizedBox(height: 8),
      Text(
        label,
        style: TextStyle(
          fontSize: 12,
          color: Colors.black87,
          fontWeight: FontWeight.w500,
        ),
      ),
    ],
  );
}
