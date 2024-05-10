import 'package:f_navigation/SharedFunctions/shared.dart';
import 'package:f_navigation/second_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(252, 3, 80, 69),
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
            // Text("Home Screen"),
            Icon(
              Icons.home_max,
              color: Colors.white,
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            color: const Color.fromARGB(252, 3, 80, 69),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  const Text(
                    "Your Wallet",
                    style: TextStyle(fontSize: 17.0, color: Colors.white),
                  ),
                  Row(
                    children: [
                      Text(
                        Shared.formatCurrency(1750.5),
                        style: const TextStyle(
                            fontSize: 21.0, color: Colors.white),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 15.0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            fixedSize: const Size.fromHeight(10), // background
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const SecondScreen(
                                        appBarTitle: "Second AppBar Title")));
                          },
                          child: const Text(
                            "15%",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Card(
                    child: Card(
                      child: Column(
                        children: [
                          const ListTile(
                            title: Text('Good Financial'),
                            subtitle: Text('Your Financial Condition is Good'),
                            leading: Icon(
                              Icons.account_circle,
                              size: 60.0,
                            ),
                          ),
                          const SizedBox(
                            height: 50.0,
                          ),
                          Container(
                            color: Colors.white,
                            padding: const EdgeInsets.all(20),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  "View Statistic",
                                  style: TextStyle(
                                      color: Color.fromARGB(252, 3, 80, 69),
                                      fontSize: 20.0),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.grey,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(0, 20, 0, 10),
                    child: const Text(
                      'Detail Information',
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      getCardTemplate(
                          'Send Money', Icons.contactless, Colors.green, 80.50),
                      getCardTemplate('Pay Items', Icons.touch_app_outlined,
                          Colors.green, 150.15),
                    ],
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      getCardTemplate(
                          'Top Up', Icons.share, Colors.yellow, 60.32),
                      getCardTemplate(
                          'Request Money', Icons.facebook, Colors.blue, 90.20),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget getCardTemplate(
      String middleText, IconData icon, Color _color, double amount) {
    Shared sharedRef = Shared();

    return Card(
      child: Container(
        width: 150.0,
        height: 150,
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Icon(
              icon,
              size: 50.0,
              color: _color,
            ),
            Text(middleText),
            Text(
              Shared.formatCurrency(amount),
              style:
                  const TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
