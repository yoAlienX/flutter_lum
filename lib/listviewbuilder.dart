import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Listviewbuilder(),));
}

class Listviewbuilder extends StatelessWidget {
  var name = ["Rahul", "Hari", "Me", "Ebin", "Paatta"];
  var phone = [
    '1234567890',
    '9283746567',
    '9182736450',
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

  Listviewbuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(image[index]),),
                title: Text(name[index]),
                subtitle: Text(phone[index]),
                trailing: const Icon(Icons.call),
              )
          );
        },
        itemCount: name.length,
      ),
    );
  }
}
