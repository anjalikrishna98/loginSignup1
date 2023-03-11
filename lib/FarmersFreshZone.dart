import 'dart:ui';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Farmers_Fresh(),
        theme: ThemeData(primarySwatch: Colors.green),
        useInheritedMediaQuery: true,
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
      ),
    ),
  );
}

class Farmers_Fresh extends StatefulWidget {
  @override
  State<Farmers_Fresh> createState() => _Farmers_FreshState();
}

class _Farmers_FreshState extends State<Farmers_Fresh> {
  var img = [
    "https://media.istockphoto.com/id/1306511017/photo/healthy-food-background-healthy-vegan-vegetarian-food-in-paper-bag-vegetables-and-fruits-on.jpg?b=1&s=170667a&w=0&k=20&c=L0sPEI7v7zeNAV5ZUB_2k_dK_Fjm-lxrx3Btmc4SgPI=",
    "https://t4.ftcdn.net/jpg/01/25/31/19/360_F_125311972_pKSvvUp8odP1B1rhQ3KCTaL1ky1vaM0G.jpg",
    "https://media.istockphoto.com/id/1314537808/photo/healthy-fresh-fruits-border-on-white-background.jpg?b=1&s=170667a&w=0&k=20&c=fn0tfCZG-Dsw6atMRypwjHh3k2D3k6bk41YxmX6wARk="
  ];

  var img1 = [
    "https://media.istockphoto.com/id/1247073860/photo/healthy-fresh-organic-vegetables-in-a-crate-isolated-on-white-background.jpg?b=1&s=170667a&w=0&k=20&c=k6cDRVUBEUOQF97NJAq_pvlRedTn7Qr1NYvWQcjOTTk=",
    "https://media.istockphoto.com/id/173255460/photo/assortment-of-fruits.jpg?b=1&s=170667a&w=0&k=20&c=DTUxwA3VoqtIwRHy9mwFi8vFeMlPtrwULj8KJkeiwlE=",
    "https://plus.unsplash.com/premium_photo-1675639895212-696149c275f9?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8ZXhvdGljJTIwZm9vZHxlbnwwfHwwfHw%3D&w=1000&q=80",
    "https://media.istockphoto.com/id/1310910433/photo/selection-of-assorted-raw-meat-food-for-zero-carb-carnivore-diet-uncooked-beef-steak-ground.jpg?b=1&s=170667a&w=0&k=20&c=kHDw07LONz2akPa8pPe_rhUXhoc_aCryBdgI9G2QG3g=",
    "https://images.unsplash.com/photo-1494597564530-871f2b93ac55?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fGhlYWx0aHklMjBudXRyaXRpb258ZW58MHx8MHx8&w=1000&q=80",
    "https://images.unsplash.com/photo-1627485937980-221c88ac04f9?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8ZmxvdXJ8ZW58MHx8MHx8&w=1000&q=80",
  ];

  var txt = [
    "Vegetables",
    "Fruits",
    "Exotic",
    "Fresh Cuts",
    "Nutrition Chargers",
    "Flours"
  ];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.green,
        buttonBackgroundColor: Colors.green,
        backgroundColor: Colors.lightGreen,
        index: index,
        onTap: (taped_index) {
          setState(() {
            index = taped_index;
          });
        },
        items: [
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Column(
              children: const [Icon(Icons.home_outlined), Text("Home")],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Column(
              children: const [Icon(Icons.shopping_cart_outlined), Text("Cart")],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Column(
              children: const [Icon(Icons.account_circle_outlined), Text("Profile")],
            ),
          ),
        ],
      ),
      body: CustomScrollView(slivers: [
        SliverAppBar(
          title: const Text(
            "FARMERS FRESH ZONE",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 5),
              child: Icon(Icons.location_on_outlined),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20, left: 5),
              child: Text("Kochi"),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.arrow_drop_down_outlined),
            )
          ],
          bottom: AppBar(
            title: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                height: 45,
                child: const TextField(
                  decoration: InputDecoration(
                      hintText: "Search here for Vegetables,Fruits...",
                      prefixIcon: Icon(Icons.search)),
                ),
              ),
            ),
          ),
        ),
        SliverList(
            delegate: SliverChildListDelegate([
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  height: 20,
                  //color: Colors.black
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 100,
                        height: 60,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: const Center(child: Text("VEGETABLES",style: TextStyle(color: Colors.green)),),
                      ),
                      Container(
                        width: 80,
                        height: 100,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: const Center(child: Text("FRUITS",style: TextStyle(color: Colors.green))),
                      ),
                      Container(
                        width: 80,
                        height: 100,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: const Center(child: Text("EXOTIC",style: TextStyle(color: Colors.green))),
                      ),
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: const Center(child: Text("FRESH CUTS",style: TextStyle(color: Colors.green),)),
                      ),
                    ],
                  ),
                ),
              ),
            ])),
        SliverList(
            delegate: SliverChildListDelegate([
              CarouselSlider.builder(
                  itemCount: 3,
                  itemBuilder: (BuildContext, index, realindex) {
                    return Container(
                      height: 600,
                      width: 600,
                      child: Image(
                        fit: BoxFit.fill,
                        image: NetworkImage(img[index]),
                      ),
                    );
                  },
                  options: CarouselOptions(
                    aspectRatio: 16 / 9,
                    viewportFraction: 0.8,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 3),
                    autoPlayAnimationDuration: const Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    enlargeFactor: 1,
                    //onPageChanged: callbackFunction,
                    scrollDirection: Axis.horizontal,
                  ))
            ])),
        SliverList(
            delegate: SliverChildListDelegate([
              Padding(
                padding: const EdgeInsets.only(left: 8, right: 8),
                child: Card(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        child: Column(
                          children:  const [
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Icon(Icons.timer_sharp,
                                  size: 40, color: Colors.lightGreen),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 5, bottom: 8),
                              child: Text("TIMELY DELIVERY",
                                  style: TextStyle(fontSize: 12)),
                            )
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: const [
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Icon(Icons.spatial_tracking_outlined,
                                  size: 40, color: Colors.lightGreen),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 5, bottom: 8),
                              child: Text("TRACEABILTY",
                                  style: TextStyle(fontSize: 12)),
                            )
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: const [
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Icon(Icons.local_convenience_store_rounded,
                                  size: 40, color: Colors.lightGreen),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 5.0, bottom: 8),
                              child: Text("LOCAL SOURCING",
                                  style: TextStyle(fontSize: 12)),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ])),
        SliverList(
            delegate: SliverChildListDelegate([
              const Padding(
                padding: EdgeInsets.only(top: 20, left: 15),
                child: Text(
                  "SHOP BY CATEGORY",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              )
            ])),
        SliverList(
            delegate: SliverChildListDelegate([
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8),
                  child: Container(
                    height: 400,
                    child: GridView.count(
                        crossAxisCount: 3,
                        children: List.generate(
                            6,
                                (index) => Card(
                              shape: const RoundedRectangleBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                              child: Column(
                                children: [
                                  Container(
                                      height: 80,
                                      width: 120,
                                      child: Image(
                                        image: NetworkImage(img1[index]),
                                        fit: BoxFit.fill,
                                      )),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8.0),
                                    child: Text(txt[index]),
                                  )
                                ],
                              ),
                            ))),
                  ),
                ),
              ),
            ]))
      ]),
    );
  }
}

