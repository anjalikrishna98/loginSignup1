import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loginsignupui/signup.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(image: NetworkImage('https://media.istockphoto.com/id/1181755051/vector/old-off-white-cream-colored-rippled-effect-wooden-wall-textured-grunge-vector-background.jpg?s=612x612&w=0&k=20&c=0BXJQJTR1PbpNO_dmjNxYKenMd3e6Su68SjPxH1DhrM='),
              fit: BoxFit.fill),
        ),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text("Login",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 30)),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text(
                'Welcome Back ! Login with your credentials',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 80, right: 80, top: 10),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(80)),
                    hintText: 'UserName',
                    prefixIcon: const Icon(Icons.account_circle),
                    labelText: 'User Name'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 80, right: 80, top: 10),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(80)),
                    hintText: 'Password',
                    prefixIcon: const Icon(Icons.password),
                    labelText: 'Password'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Login'),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text("Don't you have any account? SignUp"),
            )
          ],
        ),
      ),
    );
  }
}
