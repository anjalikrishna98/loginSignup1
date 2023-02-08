import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContactBook extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(" Contacts "),),
      body: ListView(
        children:  [
          Card(
            color: Colors.white,
            child: ListTile(
              leading: CircleAvatar(backgroundImage: NetworkImage("https://1.bp.blogspot.com/-6sgtv37NJF0/Xp8dfjBXtfI/AAAAAAAAGQk/qPpFQS2A-RwsMqcFCqm3kZlXtIKagdrSwCLcBGAsYHQ/s1600/whatsapp-dp-images-1.jpg"),),
              title: Text("Ashmi"),
              subtitle: Text("6235937787"),
              trailing: Wrap(children: const [
                Icon(Icons.message),
                Icon(Icons.phone),
              Icon(Icons.arrow_right)]),
            ),
          ),
          Card(
            color: Colors.white,
            child: ListTile(
              leading: CircleAvatar(backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT62UdsetM4JOCGQAIZXyjzQd2lpLWEo5xs8-cqc3BaavjrxL8u908p3Is1BePTubnay-A&usqp=CAU"),),
              title: Text("Bijitha"),
              subtitle: Text("9497823455"),
              trailing: Wrap(children: const [
                Icon(Icons.message),
                Icon(Icons.phone),
                Icon(Icons.arrow_right)]),
            ),
          ),
          Card(
            color: Colors.white,
            child: ListTile(
              leading: CircleAvatar(backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSlC8yv7-BUx-uqsancr2RR8HEP7JfqaCYwZ4xGNNZETJdbU8Ubu2RckgWV4olneAj23gI&usqp=CAU"),),
              title: Text("Shalini"),
              subtitle: Text("7025178777"),
              trailing: Wrap(children: const [
                Icon(Icons.message),
                Icon(Icons.phone),
                Icon(Icons.arrow_right)]),
            ),
          ),
          Card(
            color: Colors.white,
            child: ListTile(
              leading: CircleAvatar(backgroundImage: NetworkImage("https://funylife.in/wp-content/uploads/2022/11/20221118_172756-1024x1024.jpg"),),
              title: Text("Vyshav"),
              subtitle: Text("8028779320"),
              trailing: Wrap(children: const [
                Icon(Icons.message),
                Icon(Icons.phone),
                Icon(Icons.arrow_right)]),
            ),
          ),
          Card(
            color: Colors.white,
            child: ListTile(
              leading: CircleAvatar(backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQlgr_0zB24ssL5RWJ3ppYjAFuKFtDFMclE7NIltSmftdkoXn5UmWiIm94TsMSHU9Sgvx4&usqp=CAU"),),
              title: Text("Nandhu"),
              subtitle: Text("9794786235"),
              trailing: Wrap(children: const [
                Icon(Icons.message),
                Icon(Icons.phone),
                Icon(Icons.arrow_right)]),
            ),
          ),
        ],
      ),
    );
  }

}