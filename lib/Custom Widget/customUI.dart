import 'package:firstproject/Custom%20Widget/customwidget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: CustomUI(),
  ));
}

class CustomUI extends StatelessWidget {
  var images = [
    'https://images.pexels.com/photos/3025236/pexels-photo-3025236.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/3025236/pexels-photo-3025236.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/3025236/pexels-photo-3025236.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/3025236/pexels-photo-3025236.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/3025236/pexels-photo-3025236.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/3025236/pexels-photo-3025236.jpeg?auto=compress&cs=tinysrgb&w=600',
  ];

  CustomUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.builder(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemBuilder: (context, index) {
              return CustomWidget(
                  image: Image.network(images[index]),
                  height: 3,
                  text: 'Fresh Fruits',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold));
            },
        itemCount: images.length,
        ),
    );
  }
}
