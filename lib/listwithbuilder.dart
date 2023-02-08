import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
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
          home: ListWithBuilder(),
        );
      }));
}

class ListWithBuilder extends StatelessWidget{
  var datas = <String>['iPhone 12', 'iPhone 13 Pro','iPhone 13','iPhone 11','iPhone 10'];
  var images = <String>["https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/iphone-12-finish-select-202207-blue?wid=5120&hei=2880&fmt=p-jpg&qlt=80&.v=1662149977576",
    "https://images.hindustantimes.com/tech/img/2022/10/30/960x540/Untitled_design_-_2022-10-30T154805792_1667125176907_1667125177038_1667125177038.png",
    "https://m.media-amazon.com/images/I/61l9ppRIiqL._SL1500_.jpg",
    "https://cdn.shopify.com/s/files/1/1684/4603/products/iphone11_Black_600x.png?v=1654771101",
    "https://images.unsplash.com/photo-1555375771-14b2a63968a9?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8aXBob25lJTIwMTB8ZW58MHx8MHx8&w=1000&q=80",];
  var price = <String>['999','1199','1299','899','799'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('List view Builder Using Asset Image'),),
      body: ListView.builder(
        itemCount: datas.length,
          itemBuilder: (BuildContext,index){
        return Card(
          color: Colors.pinkAccent,
          child: ListTile(
          leading: SizedBox(
            height: 200,
            width: 100,
            child: Image(image: NetworkImage(images[index])
            ),
          ),
              title: Text(datas[index],textAlign: TextAlign.center,),
            subtitle: Text('Better design',textAlign: TextAlign.center,),
            trailing: Text("\$${price[index]}"),
          ),
        );
      })
    );
  }

}