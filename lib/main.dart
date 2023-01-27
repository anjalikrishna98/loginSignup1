import 'dart:async';

import 'package:flutter/material.dart';

import 'login.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.cyan),
    home: MainScreen(),
  ));
}

class MainScreen extends StatefulWidget {
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => LoginPage()),
      );
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(image: NetworkImage('https://media.istockphoto.com/id/1181755051/vector/old-off-white-cream-colored-rippled-effect-wooden-wall-textured-grunge-vector-background.jpg?s=612x612&w=0&k=20&c=0BXJQJTR1PbpNO_dmjNxYKenMd3e6Su68SjPxH1DhrM='),
          fit: BoxFit.fill),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
              const Padding(
                padding: EdgeInsets.only(top: 40,bottom: 50),
                child: Text(
                  "Hello There !",
                  style: TextStyle(
                      color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 80),
                child: Text(
                  "automatic identity verification which enable you to verify yor identity",
                  style: TextStyle(
                      color: Colors.grey, fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              const Image(
                image: AssetImage("assets/icon/icon1.png"),
                height: 100,
                width: 100,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: ElevatedButton(onPressed: () {}, child: Text("LOGIN")),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: ElevatedButton(onPressed: () {}, child: Text("SIGNUP")),
              )
            ],
          ),
        ),
      ),
    );
  }
}
