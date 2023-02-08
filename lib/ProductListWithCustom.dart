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
          home: ProductList(),
        );
      }));
}

class ProductList extends StatelessWidget {
  var images = <String>[
    "https://www.bigbasket.com/media/uploads/p/l/40105380-2_1-fresho-apple-royal-gala-premium.jpg",
    "https://www.bigbasket.com/media/uploads/p/xxl/30000974_11-fresho-kesar-mango.jpg",
    "https://www.shutterstock.com/image-photo/bunch-bananas-isolated-on-white-260nw-1722111529.jpg",
    "https://www.shutterstock.com/image-photo/green-grape-leaves-isolated-on-260nw-533487490.jpg",
    "https://thumbs.dreamstime.com/b/whole-watermelon-big-slice-isolated-white-background-as-package-design-element-77610622.jpg",
    "https://www.bigbasket.com/media/uploads/p/l/20000911-2_39-fresho-kiwi-green.jpg",
    "https://thumbs.dreamstime.com/b/sliced-orange-fruit-leaves-isolated-white-23331258.jpg"
  ];

  var names = <String>[" Apple", " Mango", "Banana", "Grapes", " Water Melon", "Kiwi", " Orange"];
  var unit =<String>[" Kg","Doz"," Doz"," Kg"," Kg","Pc"," Doz"];
  var price =<String>["20","30","10","8","25","40","15"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product List'),
        actions: const [
          Icon(Icons.shopping_cart),
        ],
        leading: Icon(Icons.menu),
      ),
      body: ListView.custom(childrenDelegate: SliverChildBuilderDelegate((context, index) {
       return Card(
         color: Colors.grey[800],
         child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           mainAxisSize: MainAxisSize.max,
           children: [
             Image(image: NetworkImage(images[index]),width: 100,height: 100,),
             Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 RichText(
                     maxLines: 1,
                     overflow: TextOverflow.ellipsis,
                     text: TextSpan(
                   text: "Price:",
                       style: TextStyle(
                         color: Colors.cyan),
                       children: [
                         TextSpan(
                           text: names[index],
                           style: TextStyle(
                             fontWeight: FontWeight.bold)
                         )
                       ]
                 )),
                 RichText(
                     maxLines: 1,
                     overflow: TextOverflow.ellipsis,
                     text: TextSpan(
                         text: "unit:",
                         style: TextStyle(
                             color: Colors.cyan),
                         children: [
                           TextSpan(
                               text: unit[index],
                               style: TextStyle(
                                   fontWeight: FontWeight.bold)
                           )
                         ]
                     )),
                 RichText(
                     maxLines: 1,
                     overflow: TextOverflow.ellipsis,
                     text: TextSpan(
                         text: "Price:",
                         style: TextStyle(
                             color: Colors.cyan),
                         children: [
                           TextSpan(
                               text: price[index] ,
                               style: TextStyle(
                                   fontWeight: FontWeight.bold)
                           )
                         ]
                     )),
               ],
             ),
             ElevatedButton(onPressed: (){}, child: Text("Add to cart"))
           ],
         ),
       );
      })),
    );
  }
}
