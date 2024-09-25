import 'package:firstproject/data_passing/secondscreen.dart';
import 'package:flutter/material.dart';

import 'dummyproduct.dart';

void main() {
  runApp(MaterialApp(
    home: Firstscreen(),
    routes: {
      'secondscreen': (context) => Secondscreen(),
    },
  ));
}

class Firstscreen extends StatefulWidget {
  const Firstscreen({super.key});

  @override
  State<Firstscreen> createState() => _FirstscreenState();
}

class _FirstscreenState extends State<Firstscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
          children: dummyproduct
              .map((product) => GestureDetector(
                    child: Column(
                      children: [
                        Center(child: Image(image: AssetImage(product['image']), fit: BoxFit.cover,)),
                        Text(product['name']),
                      ],
                    ),
                    onTap: () => getProduct(context, product['id']),
                  )).toList(),
      ),
    );
  }

  void getProduct(BuildContext context, product_id) {
    Navigator.pushNamed(context, 'secondscreen', arguments: product_id);
  }
}
