import 'package:firstproject/Custom%20Widget/customwidgetbylumi.dart';
import 'package:firstproject/cliprwidget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Customwidgetimplementation(),
  ));
}

class Customwidgetimplementation extends StatelessWidget {
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
  var images = [
    'assets/images/ireland.png',
    'assets/images/ireland.png',
    'assets/images/ireland.png',
    'assets/images/ireland.png',
    'assets/images/ireland.png',
    'assets/images/ireland.png',
    'assets/images/ireland.png',
    'assets/images/ireland.png',
    'assets/images/ireland.png',
    'assets/images/ireland.png',
    'assets/images/ireland.png',
    'assets/images/ireland.png',
    'assets/images/ireland.png',
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
              padding: const EdgeInsets.all(8.0),
              child: CustomWidgetbyLumi(
                  img: Image(image: AssetImage(images[index])),
                  title: Text(names[index]),
                  onpress: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Cliprwidget()));
                  }),
            );
          },
          separatorBuilder: (context, index) {
            return const Divider(
              thickness: 40,
              color: Colors.white,
            );
          },
          itemCount: names.length,
        ));
  }
}
