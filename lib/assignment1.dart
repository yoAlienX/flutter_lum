import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Listviewbuilder(),
  ));
}

class Listviewbuilder extends StatelessWidget {
  var names = [
    "Facebook",
    "A10 NETWORKS INC.",
    "Intel Corp",
    "HP Inc",
    "Advanced Micro Devices Inc.",
    "Apple Inc.",
    "Amazon.com Inc.",
    "Microsoft Corporation",
    "Facebook"
  ];
  var values = [
    '227.1',
    '12.34',
    '54.96',
    '32.43',
    '33.44',
    '132.54',
    '3545.44',
    '265.51',
    '373.1'
  ];
  var colors = [Colors.blue];
  var icons = ['F', 'A', 'I', 'H', 'A', 'A', 'A', 'M', 'F'];

  Listviewbuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white54,
      appBar: AppBar(
        title: const Text("List View Builder"),
        backgroundColor: Colors.blueAccent,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
              child: ListTile(
                title: Text(names[index]),
                trailing: Text("\$ ${values[index]}"),
                leading: CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: Text(icons[index]),
                ),
          ));
        },
        itemCount: names.length,
      ),
    );
  }
}
