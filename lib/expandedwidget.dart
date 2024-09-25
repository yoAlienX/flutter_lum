import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MaterialApp(
    home: Expandedwidget(),
  ));
}

class Expandedwidget extends StatefulWidget {
  const Expandedwidget({super.key});

  @override
  State<Expandedwidget> createState() => _ExpandedwidgetState();
}

class _ExpandedwidgetState extends State<Expandedwidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.blue,
              height: 100,
              width: double.infinity,
              child: const Icon(Icons.games),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.red,
              height: 100,
              width: double.infinity,
              child: const Icon(Icons.food_bank),
            ),
          ),
          Expanded(
            child: Container(
                color: Colors.green,
                height: 100,
                width: double.infinity,
                child: const Center(
                    child: FaIcon(FontAwesomeIcons.amazon))),
          ),
        ],
      ),
    );
  }
}
