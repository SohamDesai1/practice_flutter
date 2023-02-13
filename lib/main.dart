// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _myKey = GlobalKey<FormState>();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromARGB(255, 38, 100, 190),
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Flutter Demo'),
        ),
        body: Center(
          child: Container(
            height: 500,
            width: 378,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 83, 210, 220),
              boxShadow: [
                BoxShadow(
                  blurRadius: 56,
                  color: Color.fromARGB(255, 83, 210, 220),
                  offset: Offset(
                    39,
                    39,
                  ),
                ),
                BoxShadow(
                  blurRadius: 56,
                  color: Color.fromARGB(255, 79, 143, 192),
                  offset: Offset(
                    -39,
                    -39,
                  ),
                ),
              ],
              gradient: LinearGradient(
                stops: [0, 1],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color.fromARGB(255, 43, 142, 218),
                  Color.fromARGB(255, 0, 243, 219)
                ],
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(
                  56,
                ),
              ),
            ),
            child: Form(
              key: _myKey,
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.fromLTRB(0, 30, 0, 15),
                    width: 200,
                    height: 30,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 227, 179),
                        borderRadius: BorderRadius.circular(15)),
                    child: Text("Login",
                        style: TextStyle(
                          fontSize: 23,
                        )),
                  ),
                  Container(
                    alignment: Alignment.topCenter,
                    child: Icon(
                      Icons.login,
                      size: 45,
                    ),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        icon: Icon(Icons.person),
                        labelText: "NAME",
                        hintText: "Enter Your Name"),
                    validator: (value) {
                      if (value!.length < 4) {
                        return "Enter valid Name";
                      } else {
                        return null;
                      }
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.password_rounded),
                      labelText: "PASSWORD",
                      hintText: "Enter Your Password",
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
