import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) {
        return MaterialApp(
          useInheritedMediaQuery: true,
          locale: DevicePreview.locale(context),
          builder: DevicePreview.appBuilder,
          home: ProfileStack(),
        );
      }));
}

class ProfileStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        leading: Icon(Icons.menu),
        actions: [Icon(Icons.more_vert)],
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 230,
                width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://images.unsplash.com/photo-1457369804613-52c61a468e7d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ],
          ),
          Container(
            height: 10,
            color: Colors.white,
          ),
          const Positioned(
            top: 188,
            left: 138,
            child: CircleAvatar(
              radius: 62,
              backgroundColor: Colors.white,
            ),
          ),
          const Positioned(
              top: 190,
              left: 140,
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1617868186608-87ae5c6f422c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fGdpcmwlMjBhbG9uZXxlbnwwfHwwfHw%3D&w=1000&q=80"),
                radius: 60,
              ),
          ),
           const Positioned(
            top: 210,
            left: 300,
            child: CircleAvatar(
              backgroundColor: Colors.blue,
              radius: 25,
              child: Icon(Icons.message),
            ),
          ),
          const Positioned(
            top: 210,
            left: 50,
            child: CircleAvatar(
              backgroundColor: Colors.blue,
              radius: 25,
              child: Icon(Icons.add),
            )
          ),
          const Positioned(
            top: 320,
            left: 175,
              child: Text(
                  "Alice",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
            ),
          const Positioned(
            top: 350,
            left: 180,
            child: Text(
              "Artist",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
          ),
        ],
      ),
    );
  }
}
