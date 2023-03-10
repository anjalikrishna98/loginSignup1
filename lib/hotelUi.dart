
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Hotel_UI(),
        theme: ThemeData(primarySwatch: Colors.orange),
        useInheritedMediaQuery: true,
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
      ),
    ),
  );
}

class Hotel_UI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(height: 50,
        color: Colors.purple,
        buttonBackgroundColor: Colors.purple,
        backgroundColor: Colors.purple[100]!,
        items: [
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Column(
              children: const [Icon(Icons.search), Text("Search")],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Column(
              children: const [Icon(Icons.home), Text("Home")],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Column(
              children: const [Icon(Icons.settings), Text("Setting")],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              width: 400,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://images.unsplash.com/photo-1582719508461-905c673771fd?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8cmVzb3J0fGVufDB8fDB8fA%3D%3D&w=1000&q=80"))),
              child: Stack(
                children: const [
                  Positioned(
                    top: 230,
                    left: 10,
                    child: Text(
                      "Le Meridien Resort",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  Positioned(
                    top: 260,
                    left: 10,
                    child: Text(
                      "Kochi,Kerala",
                      style: TextStyle(
                          fontSize: 20,
                          //fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  Positioned(
                      top: 260,
                      right: 15,
                      child: Icon(
                        Icons.favorite_border,
                        size: 30,
                        color: Colors.white,
                      ))
                ],
              ),
            ),
            Container(
                height: 80,
                child: Stack(children:  [
                  Positioned(
                    left: 10,
                    top: 8,
                    child: RatingBar.builder(
                      initialRating: 4.9,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemSize: 20,
                      itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: Colors.amber,
                      ), onRatingUpdate: (double value) { },
                    ),
                  ),
                  Positioned(
                      top: 40,
                      left: 15,
                      child: Text(
                        "4.9(6,325)",
                        style: TextStyle(color: Colors.grey, fontSize: 15),
                      )),
                  Positioned(
                      top: 10,
                      right: 15,
                      child: Text(
                        "\u{20B9}${"11,500"}",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.purple),
                      )),
                  Positioned(
                      top: 35,
                      right: 15,
                      child: Text(
                        "/Night",
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      )),
                ])),
            Container(
              height: 40,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)),
                    minimumSize: const Size(200, 20)),
                child: const Text(
                  "Book Now",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                height: 500,
                child: Column(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(right: 170, top: 10),
                      child: Text(
                        "Le Meridien Resort",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 8.0),
                      child: Text(
                        "Le Meridien resort is yet another amazing resort that provides banks of calm backwaters and offers a 5-star experience to its clients. The estate provides more than 223 rooms and all of them are very luxurious. This is one of the finest hotels in Cochin and is not located too far. The place is quite convenient for visitors. The 14 banquet halls that spread over 65,000 square feet is something that people will fall in love with. The resort has a capacity of housing more than 2500 guests and in case you’re looking forward to having a taste of mother nature combined with exquisite luxury, then this is the right choice for you.",
                        style: TextStyle(fontSize: 16),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
