import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
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
              child: Text(
                "Sign Up",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text(
                "Create an account , It's free",
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
                    border:
                        OutlineInputBorder(borderRadius: BorderRadius.circular(80)),
                    hintText: 'EMAIL ID',
                    prefixIcon: Icon(Icons.email),
                    labelText: 'EMAIL'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 80, right: 80, top: 10),
              child: TextField(
                decoration: InputDecoration(
                    border:
                        OutlineInputBorder(borderRadius: BorderRadius.circular(80)),
                    hintText: 'PASSWORD',
                    prefixIcon: Icon(Icons.password),
                    labelText: 'PASSWORD'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 80, right: 80, top: 10),
              child: TextField(
                decoration: InputDecoration(
                  border:
                      OutlineInputBorder(borderRadius: BorderRadius.circular(80)),
                  hintText: 'PASSWORD',
                  prefixIcon: Icon(Icons.password),
                  labelText: 'CONFIRM PASSWORD',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: ElevatedButton(onPressed: (){}, child: Text('Sign Up')
              ),
            ),
            const Padding(
              padding:  EdgeInsets.only(top: 20),
              child: Text('Do you have an account? Login'),
            )
          ],
        ),
      ),
    );
  }
}
