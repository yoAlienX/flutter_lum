import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Gridviewbuilder(),
  ));
}

class Gridviewbuilder extends StatefulWidget {
  const Gridviewbuilder({super.key});

  @override
  State<Gridviewbuilder> createState() => _GridviewbuilderState();
}

class _GridviewbuilderState extends State<Gridviewbuilder> {
  var color = [
    Colors.red,
    Colors.yellow,
    Colors.greenAccent,
    Colors.blue,
    Colors.purple,
    Colors.pink
  ];
  var icon = [
    Icons.account_balance,
    Icons.add_alert,
    Icons.access_alarm_rounded,
    Icons.add_circle,
    Icons.ac_unit,
    Icons.games
  ];
  var data = [
    'Account Balance',
    'add_alert',
    'access_alarm_rounded',
    'add_circle',
    'ac_unit',
    'games'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, crossAxisSpacing: 10, mainAxisSpacing: 10),
        itemBuilder: (context, index) {
          return Container(
            color: color[index],
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(icon[index]),
                Text(data[index]),
              ],
            ),
          );
        },
        itemCount: data.length,
      ),
    );
  }
}
