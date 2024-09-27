import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: ListviewCustomListDelegate(),));
}
class ListviewCustomListDelegate extends StatelessWidget {

  var name = ["Rahul", "Hari", "Me", "Ebin", "Minnal"];
  var phone = [
    '1234567890',
    '9283746567',
    '91******50',
    '9283746501',
    '8172635490'
  ];
  var image = [
    'assets/images/deadpool.png',
    'assets/images/deadpool.png',
    'assets/images/deadpool.png',
    'assets/images/deadpool.png',
    'assets/images/deadpool.png'
  ];
  var colors = [
    Colors.green,
    Colors.blue,
    Colors.yellow,
    Colors.grey,
    Colors.blueGrey
  ];

  ListviewCustomListDelegate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text("Contacts"),
      ),
      body: ListView.custom(childrenDelegate: SliverChildListDelegate(
        List.generate(name.length, (index) {
          return Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(image[index]),
              ),
              title: Text(name[index]),
              subtitle: Text(phone[index]),
              trailing: const Icon(Icons.call),
            ),
          );
        }),

        // [
        //   Card(
        //     color: Colors.red[200],
        //     child: ListTile(
        //       leading: CircleAvatar(
        //         backgroundImage: AssetImage("assets/images/deadpool.png"),),
        //       title: Text("Arun"),
        //       subtitle: Text('9384729732'),
        //       trailing: Icon(Icons.call),
        //     ),
        //   ),
        //   Card(
        //     color: Colors.red[200],
        //     child: ListTile(
        //       leading: CircleAvatar(
        //         backgroundImage: AssetImage("assets/images/incognito.png"),),
        //       title: Text("John"),
        //       subtitle: Text('8374658723'),
        //       trailing: Icon(Icons.call),
        //     ),
        //   ),
        // ]
      )),
    );
  }
}
