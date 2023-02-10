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
          home: GridUi2(),
        );
      }));
}

class GridUi2 extends StatelessWidget {
  var images = <String>[
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxxSFkDKFibb24Zn1adRIGytIQfNTpfFN3_w&usqp=CAU",
    "https://4.imimg.com/data4/VS/YC/MY-156069/metal-optical-frames-250x250.jpg",
    "https://5.imimg.com/data5/VC/NE/LM/SELLER-19143749/genuine-leather-belts-500x500.JPG",
    "https://5.imimg.com/data5/SELLER/Default/2022/6/CF/QV/MO/81320565/lumen-latest-stylish-jewellery-star-moon-design-silver-necklace-chains-for-women-and-girls-1000x1000.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRxlDwyULTW6YzVPoRKg-LJu_A594VJqVYg6A&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTrEve5Dgs-FgyLKBw1Hsu6Zb7THxQVAlUWvA&usqp=CAU"
  ];
  var names = <String>[
    "Vagabond Sack",
    "Stella",
    "Whitney belt",
    "Garden Strand",
    "Strut Earings",
    "Varsity Socks"
  ];
  var price = <String>["120", "58", "35", "98", "34", "12"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: (Text('SHRINE')),
        leading: Icon(Icons.menu),
        actions: [Icon(Icons.search), Icon(Icons.filter_1)],
      ),
      body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemCount: images.length,
          itemBuilder: (context,index){
            return Card(
              child: Column(
                  children: [
              Padding(
              padding: const EdgeInsets.all(2.0),
              child: Container(
                height: 120,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(images[index]))),
              ),
            );
            )
            );
      }
      ),
    );
  }
}
