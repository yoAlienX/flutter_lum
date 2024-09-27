import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Assignment3(),));
}

class Assignment3 extends StatelessWidget {

  var names = [
    'List item 0',
    'List item 1',
    'List item 2',
    'List item 3',
    'List item 4',
    'List item 5',
    'List item 6',
    'List item 7',
    'List item 8',
    'List item 9',
    'List item 10',
    'List item 11',
    'List item 12',
    'List item 13',
    'List item 14',
    'List item 15',
  ];

  Assignment3({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("ListView.separated()"),
          backgroundColor: Colors.green,
        ),
        body: ListView.separated(
          itemBuilder: (context, index) {
            return Card(
              color: Colors.white,
              child: ListTile(
                title: Text(names[index]),
              ),
            );
          },
          separatorBuilder: (context, index){
            return Card(
              color: Colors.grey,
              child: ListTile(
                title: Text("Separator $index"),
              ),
            );
          },
          itemCount: names.length,

        )
    );
  }
}
