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
          home: ListOfCities(),
        );
      }));
}

class ListOfCities extends StatelessWidget{

  var names =<String>['Delhi','London','Vancouver','New York'];
  var images = <String>["https://media.istockphoto.com/id/510795912/photo/india-gate.jpg?b=1&s=170667a&w=0&k=20&c=Nts8vpG6WNkm8s3GSY-8LGmRGpwmzzJtowWLmSRvVks=",
  "https://media.istockphoto.com/id/1294454411/photo/london-symbols-with-big-ben-double-decker-buses-and-red-phone-booth-in-england-uk.jpg?b=1&s=170667a&w=0&k=20&c=SR5FBt8VvpZEOIxZcTmoEf9XxU0oiSnbobD3E6ZB358=",
  "https://media.istockphoto.com/id/1225284622/photo/false-creek-downtown-vancouver-british-columbia-canada.jpg?b=1&s=170667a&w=0&k=20&c=pKJpeVdMnGyN6dE825Pou8ij86SVQhUqINwEiuGysbI=",
  "https://media.istockphoto.com/id/1340381886/photo/aerial-view-of-manhattan-at-sunset.jpg?b=1&s=170667a&w=0&k=20&c=uXyWuZuP-4maEheV1sc90cmwBGG4fn3C108_MgJ9Zro="];
  var cities =<String>['India','Britain','Canada','USA'];
  var population =<String>['Population : 19mil','Population :8 mil', 'Population : 2.4 mil',
  'Population :8.1 mil'];

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title: Text("Cities Around World"),),
     body: ListView.builder(
       itemCount: names.length,
         itemBuilder: (BuildContext,index){
       return Card(
         color: Colors.yellow,
         child: ListTile(
           isThreeLine: true,
           leading: SizedBox(
             height: 200,
             width: 100,
             child: Image(image: NetworkImage(images[index])),
           ),
           title: Text(names[index],textAlign: TextAlign.center,),
           subtitle: Text("${cities[index]}\n ${population[index]}",textAlign: TextAlign.center,),

         ),
       );
     }),
   );
  }

}