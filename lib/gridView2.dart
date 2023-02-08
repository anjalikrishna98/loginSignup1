import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
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
          home: Grid2(),
        );
      }));
}

class Grid2 extends StatelessWidget {
  var icon = [
    FontAwesomeIcons.house,
    FontAwesomeIcons.bell,
    FontAwesomeIcons.camera,
    FontAwesomeIcons.starAndCrescent,
    FontAwesomeIcons.wifi,
    FontAwesomeIcons.solidIdBadge,
    FontAwesomeIcons.phone,
    FontAwesomeIcons.message,
    FontAwesomeIcons.fileArrowUp,
    FontAwesomeIcons.sdCard,
    FontAwesomeIcons.microphoneLines,
    FontAwesomeIcons.fileCirclePlus
  ];
  var color = [
    Colors.blue,
    Colors.orange,
    Colors.green,
    Colors.pink,
    Colors.red,
    Colors.blueAccent,
    Colors.purpleAccent,
    Colors.greenAccent,
    Colors.yellowAccent,
    Colors.orangeAccent,
    Colors.pinkAccent,
    Colors.lightGreen
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid View'),
      ),
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              childAspectRatio: 2),
          itemCount: 12,
          itemBuilder: (context, index) {
            return Padding(
                padding: EdgeInsets.only(left: 10, right: 10, top: 20),
                child: Container(
                  decoration: BoxDecoration(
                      boxShadow: const [BoxShadow(color: Colors.blueGrey,
                          blurRadius: 6,
                          spreadRadius: 5,
                          offset: Offset(3, 5))],
                      borderRadius: BorderRadius.circular(10),
                  color: color[index],
                  shape: BoxShape.rectangle,
                ),
                child: Center(
                  child: ListTile(
                    leading: SizedBox(
                      height: 20,
                      width: 20,
                      child: FaIcon(icon[index]),
                    ),
                    title: Text("Heart Shaker"),
                  ),
                )),);
          }),
    );
  }
}
