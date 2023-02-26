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
          home: DrawerGrad(),
        );
      }));
}

class DrawerGrad extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawer'),
      ),
      drawer: Drawer(
        child: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  end: Alignment.topRight,
                  colors: [
                Colors.orangeAccent,
                Colors.redAccent,
                Colors.orange,
              ])),
          child: ListView(
            children: [
              const SizedBox(
                height: 80,
                width: 50,
              ),
              const ListTile(
                title: Text("Sundar Pichai",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                subtitle: Text("CEO of Alphabet Inc."),
                leading: CircleAvatar(backgroundImage: NetworkImage("https://media.gettyimages.com/id/1086058968/photo/google-ceo-sundar-pichai-poses-during-the-opening-day-of-a-new-berlin-office-of-us-internet.jpg?s=612x612&w=gi&k=20&c=gYL_AZSvXOr9tYFxNTMocMqbOw6Gvldri-qktT5__8s="),
                  radius: 50,
                ),
              ),
              const SizedBox(
                width: 100,
                height: 10,
              ),
              const ListTile(
                leading: Icon(Icons.dashboard),
                title: Text("Dashboard"),
              ),
              const ListTile(
                leading: Icon(Icons.leak_add_rounded),
                title: Text("Leads"),
              ),
              const ListTile(
                leading: Icon(Icons.people),
                title: Text("Clients"),
              ),
              const ListTile(
                leading: Icon(Icons.rocket),
                title: Text("Projects"),
              ),
              const ListTile(
                leading: Icon(Icons.man_2),
                title: Text("Patients"),
              ),
              const ListTile(
                leading: Icon(Icons.unsubscribe),
                title: Text("Subscription"),
              ),
              const ListTile(
                leading: Icon(Icons.payment),
                title: Text("Payment"),
              ),
              const ListTile(
                leading: Icon(Icons.person_2),
                title: Text("Users"),
              ),
              const ListTile(
                leading: Icon(Icons.list),
                title: Text("Library"),
              ),
              SizedBox(
                width: 100,
                height: 50,
                child: ElevatedButton(onPressed: (){}, child: const Text("Log Out"),
                style:  ButtonStyle(
                  backgroundColor:MaterialStateProperty.all(Colors.redAccent),
                  padding: MaterialStateProperty.all(EdgeInsets.all(50)),
                ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
