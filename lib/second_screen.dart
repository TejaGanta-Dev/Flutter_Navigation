import 'package:f_navigation/SharedFunctions/shared.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  final String appBarTitle;
  const SecondScreen({
    super.key,
    required this.appBarTitle, // Receive data through the constructor
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title:  Center(
        //     child: Text(
        //       appBarTitle,
        //       style: const TextStyle(color: Colors.blue),
        //     ),
        //   ),
        // ),
        backgroundColor: const Color.fromARGB(252, 3, 80, 69),
        body: Container(
          margin: const EdgeInsets.fromLTRB(40, 80, 40, 80),
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const SizedBox(
                height: 50.0,
              ),
              const Icon(
                Icons.facebook,
                size: 60.0,
                color: Colors.blue,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Sent Successfully to   ",
                    style: TextStyle(),
                  ),
                  Text(
                    "Lela Crawford",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Text(
                Shared.formatCurrency(100.00),
                style: const TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(252, 3, 80, 69),
                ),
              ),
              const ListTile(
                title: Text("John Crawfood"),
                subtitle: Text("john123@yopmail.com"),
                leading: Icon(
                  Icons.account_circle_outlined,
                  color: Colors.orange,
                  size: 60.0,
                ),
              ),
             const Column(
                children: [
                   Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Transaction done on '),
                      Text(
                        "12 January 2018",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                   Text('Your Reference Number is 039483332 '),
                ],
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(
                        255, 243, 93, 33), // Background color
                  ),
                  child: const Text(
                    'Continue',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
