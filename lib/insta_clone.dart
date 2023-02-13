// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Text(
                "Instagram",
              ),
              SizedBox(
                width: 160,
              ),
              Icon(Icons.add_box),
              SizedBox(
                width: 20,
              ),
              Icon(Icons.messenger)
            ],
          ),
        ),
        body: Container(
          height: 100,
          color: Colors.black,
          child: Row(
            children: [
              SizedBox(
                width: 5,
              ),
              Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.blue,
                    child: Text(
                      "S",
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 5,
              ),
              CircleAvatar(
                radius: 30,
                backgroundColor: Colors.blue,
                child: Text(
                  "S",
                  style: TextStyle(fontSize: 30),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              CircleAvatar(
                radius: 30,
                backgroundColor: Colors.blue,
                child: Text(
                  "S",
                  style: TextStyle(fontSize: 30),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              CircleAvatar(
                radius: 30,
                backgroundColor: Colors.blue,
                child: Text(
                  "S",
                  style: TextStyle(fontSize: 30),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              CircleAvatar(
                radius: 30,
                backgroundColor: Colors.blue,
                child: Text(
                  "S",
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
