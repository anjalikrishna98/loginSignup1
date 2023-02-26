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
          home: FarmersFresh(),
          theme: ThemeData(primaryColor: Colors.green),
        );
      }));
}

class FarmersFresh extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            pinned: true,
            title: Text('FARMERS FRESH ZONE'),
            actions: [
              Row(
                children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.location_on)),
                  Text("Kochi",style: TextStyle(fontWeight: FontWeight.bold),),
                  IconButton(onPressed: (){}, icon: Icon(Icons.keyboard_arrow_down_rounded)),
                ],
              ),
            ],
            bottom: AppBar(
              elevation: 0,
              title: Container(
                height: 40,
                color: Colors.white,
                width: double.infinity,
                child: const TextField(
                  decoration: InputDecoration(
                      hintText: 'Search Here',
                      prefixIcon: Icon(Icons.search),
                      suffixIcon: Icon(Icons.camera_enhance)
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
            width: 10,
          ),
         SliverList(delegate: SliverChildListDelegate((context,index){
           return  Container(
             height: 10,
             child: Row(
               children: [
                 TextButton(onPressed: () {}, child: Text("VEGETABLES"),),
                 TextButton(onPressed: () {}, child: Text("FRUITS"),),
                 TextButton(onPressed: () {}, child: Text("EXOTIC"),),
                 TextButton(onPressed: () {}, child: Text("FRESH CUTS"),),
               ],
             ),
           );
         }),

         )
        ],
      ),
    );
  }
}