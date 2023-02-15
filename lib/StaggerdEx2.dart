import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'CustumWidget.dart';

void main() {
  runApp(DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) {
        return MaterialApp(
          useInheritedMediaQuery: true,
          locale: DevicePreview.locale(context),
          builder: DevicePreview.appBuilder,
          home: Staggerd2(),
        );
      }));
}

class Staggerd2 extends StatefulWidget {
  @override
  State<Staggerd2> createState() => _Staggerd2State();
}

class _Staggerd2State extends State<Staggerd2> {
  List<String> imagelist =[
    'https://images.unsplash.com/photo-1419242902214-272b3f66ee7a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8dW5pdmVyc2V8ZW58MHx8MHx8&w=1000&q=80',
    'https://images.unsplash.com/photo-1566546415667-71e5245881ad?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8ZW1waXJlfGVufDB8fDB8fA%3D%3D&w=1000&q=80',
    'https://cdn.pixabay.com/photo/2020/09/18/19/31/laptop-5582775_960_720.jpg',
    'https://media.istockphoto.com/photos/woman-kayaking-in-fjord-in-norway-picture-id1059380230?b=1&k=6&m=1059380230&s=170667a&w=0&h=kA_A_XrhZJjw2bo5jIJ7089-VktFK0h0I4OWDqaac0c=',
    'https://cdn.pixabay.com/photo/2019/11/05/00/53/cellular-4602489_960_720.jpg',
    'https://cdn.pixabay.com/photo/2017/02/12/10/29/christmas-2059698_960_720.jpg',
  ];
  List<String> name=["Mysteries of Universe",
    "Empire State",
    "Work Space",
    "The Travel Vlog",
    "Photography",
    "Christmas Bliss"];
  var date = [
    "20-Jun-2013",
    "19-Jun-2013",
    "10-May-2013",
    "15-Aug-2011",
    "28-Jul-2014",
    "25-Dec-2016"
  ];
  var author = [
    "Charles Dickens",
    "Jane Austen",
    "George Orwell",
    "Tolkien",
    "Shereen Bhan",
    "Robin Roberts"
  ];
  var crossaxis = [2, 2, 2, 2, 2, 2];
  var mainaxis = [3, 4, 3, 3, 4, 4];
  var height = <double>[150, 250, 150, 150, 150, 150];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Staggerd Grid'),
      ),
        body: SingleChildScrollView(
          child: StaggeredGrid.count(
              crossAxisCount: 4,
              children: List.generate(6, (index) {
                return StaggeredGridTile.count(
                    crossAxisCellCount: crossaxis[index],
                    mainAxisCellCount: mainaxis[index],
                    child: Card(color: Colors.white,
                      child: Column(
                        children: [
                          Container(
                            height: height[index],
                            decoration: BoxDecoration(borderRadius:BorderRadius.circular(10) ,
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: NetworkImage(imagelist[index]))),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 6),
                            child: RichText(
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                text: TextSpan(
                                    text: "${name[index]}\n",
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold))),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 6),
                            child: Text(date[index]),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 6),
                            child: Text(author[index]),
                          )
                        ],
                      ),
                    ));
              })),
        )
    );
  }
}
