// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, duplicate_ignore
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
                width: 200,
              ),
              Icon(Icons.heart_broken_rounded),
              SizedBox(
                width: 20,
              ),
              Icon(Icons.messenger)
            ],
          ),
        ),
        body: Container(
          height: 105,
          color: Colors.black,
          child: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        // Padding(padding: EdgeInsets.only(top: 10)),
                        CircleAvatar(
                          radius: 35,
                          backgroundColor: Colors.blue,
                          child: Text(
                            "S",
                            style: TextStyle(fontSize: 30),
                          ),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          "soham32",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ],
                );
              },
              itemCount: 10,
              scrollDirection: Axis.horizontal,
            ),
          ),
        ),
      ),
    );
  }
}
