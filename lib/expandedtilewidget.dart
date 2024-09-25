import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Expandedtilewidget(),
  ));
}

class Expandedtilewidget extends StatefulWidget {
  const Expandedtilewidget({super.key});

  @override
  State<Expandedtilewidget> createState() => _ExpandedtilewidgetState();
}

class _ExpandedtilewidgetState extends State<Expandedtilewidget> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          ExpansionTile(collapsedBackgroundColor: Colors.grey,
            backgroundColor: Colors.blue,
            title: Text('Light Themed Colors'),
            children: [
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.limeAccent,
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.lightBlue,
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.lightGreen,
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.lightGreenAccent,
                ),
              ),
            ],
          ),
          ExpansionTile(
            backgroundColor: Colors.grey,
            title: Text('Dark Themed Colors'),
            children: [
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.red,
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.deepPurple,
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.deepOrange,
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.indigoAccent,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
