import 'package:firstproject/data_passing/dummyproduct.dart';
import 'package:flutter/material.dart';

class Secondscreen extends StatefulWidget {
  const Secondscreen({super.key});

  @override
  State<Secondscreen> createState() => _SecondscreenState();
}

class _SecondscreenState extends State<Secondscreen> {

  @override
  Widget build(BuildContext context) {
    final id = ModalRoute.of(context)?.settings.arguments;
    final data = dummyproduct.firstWhere((product) => product['id'] == id);
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Text('${data['name']}'),
            Image(image: AssetImage('${data['image']}')),
            Text('${data['description']}'),
            Text('${data['price']}'),
          ],
        ),
      ),
    );
  }
}