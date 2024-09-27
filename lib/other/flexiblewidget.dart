import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: Flexiblewidget(),));
}
class Flexiblewidget extends StatefulWidget {
  const Flexiblewidget({super.key});

  @override
  State<Flexiblewidget> createState() => _FlexiblewidgetState();
}

class _FlexiblewidgetState extends State<Flexiblewidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Flexible(
            flex: 3,
            child: Container(
              color: Colors.blue,
              // width: double.infinity,
              // height: 100,
              // child: Icon(Icons.games),
            ),
          ),
          Flexible(
            flex: 4,
            child: Container(
              color: Colors.red,
              // height: double.infinity,
              // child: Icon(Icons.games),
            ),
          ),
          Flexible(
            flex: 2,
            child: Container(
              // height: double.infinity,
              color: Colors.green,
              // child: Icon(Icons.games),
            ),
          ),
        ],
      ),
    );
  }
}
