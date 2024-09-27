import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Gridviewwithsliverfixed(),
  ));
}

class Gridviewwithsliverfixed extends StatefulWidget {
  const Gridviewwithsliverfixed({super.key});

  @override
  State<Gridviewwithsliverfixed> createState() => _GridviewwithsliverfixedState();
}

class _GridviewwithsliverfixedState extends State<Gridviewwithsliverfixed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, crossAxisSpacing: 15, mainAxisSpacing: 15),
        children: [
          Container(
            color: Colors.red,
            child: const Center(child: Text('1')),
          ),
          Container(
            color: Colors.blue,
            child: const Center(child: Text('2')),
          ),
          Container(
            color: Colors.yellow,
            child: const Center(child: Text('3')),
          ),
          Container(
            color: Colors.green,
            child: const Center(child: Text('4')),
          ),
          Container(
            color: Colors.purple,
            child: const Center(child: Text('5')),
          ),
        ],
      ),
    );
  }
}
