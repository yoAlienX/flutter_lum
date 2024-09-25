import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: ListviewbuilderSeparated(),));
}

class ListviewbuilderSeparated extends StatelessWidget {

  var names = [
    'James',
    'Mathew',
    'Aju',
    'Anjaly',
    'Harold',
    'Ashika',
    'Anugrah',
    'Ebin',
    'Hari',
    'Anilit',
    'Abhinand',
    'Lolan',
    'Siva',
  ];
  var colors = [
    Colors.indigo,
    Colors.lightBlue,
    Colors.purple,
    Colors.orange,
    Colors.blueGrey,
    Colors.teal,
    Colors.lime,
    Colors.pink,
    Colors.deepPurple,
    Colors.red,
    Colors.lightGreen,
    Colors.deepOrange,
    Colors.brown
  ];

  ListviewbuilderSeparated({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView Separated"),
        backgroundColor: Colors.blue,
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 28),
              child: Card(
                color: colors[index],
                child: ListTile(
                  title: Text(names[index]),
                ),
              ),
            );
          },
        separatorBuilder: (context, index){
            return const Divider(
              thickness: 40,
              color: Colors.white,
            );
        },
        itemCount: names.length,

      )
    );
  }
}
