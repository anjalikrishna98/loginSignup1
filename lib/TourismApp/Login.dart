import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) {
        return MaterialApp(
          useInheritedMediaQuery: true,
          locale: DevicePreview.locale(context),
          builder: DevicePreview.appBuilder,
          home: Turismapp(),
        );
      }));
}

class Turismapp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body:  Container(
       decoration: BoxDecoration(
         child: Center(child: Image(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTi6ZfY-J4JITMxGFKsqrec64ZLYiqQN8ep0IUbjvmOUnztwYODe5Sjp7KpX3QuP5ym230&usqp=CAU"))),

       ),
     ),
   );
  }
}