import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomWidget extends StatelessWidget {
  final Color? bgcolor;
  final Image? images;
  VoidCallback? onpress;
  String? label;

  CustomWidget({
    this.bgcolor= Colors.grey,
    this.onpress,
    this.label,
    this.images
  });

  @override
  Widget build(BuildContext context) {
   return Card(
     color: bgcolor,
     child: ListTile(
       title: Text(label!),
       leading: images,
       onTap: onpress,
     ),
   );
  }


}