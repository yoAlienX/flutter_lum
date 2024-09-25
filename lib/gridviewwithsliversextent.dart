import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: Gridviewwithsliversextent(),));
}
class Gridviewwithsliversextent extends StatefulWidget {
  const Gridviewwithsliversextent({super.key});

  @override
  State<Gridviewwithsliversextent> createState() =>
      _GridviewwithsliversextentState();
}

class _GridviewwithsliversextentState extends State<Gridviewwithsliversextent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200, crossAxisSpacing: 20, mainAxisSpacing: 20),
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
