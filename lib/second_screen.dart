import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  final String appBarTitle;
  const SecondScreen({
    required this.appBarTitle, // Receive data through the constructor
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:  Center(
            child: Text(
              appBarTitle,
              style: const TextStyle(color: Colors.blue),
            ),
          ),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('First  Screen'),
          ),
        ));
  }
}

