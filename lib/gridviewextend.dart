import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Gridviewextend(),
  ));
}

class Gridviewextend extends StatefulWidget {
  const Gridviewextend({super.key});

  @override
  State<Gridviewextend> createState() => _GridviewextendState();
}

class _GridviewextendState extends State<Gridviewextend> {
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
  var color = [
    Colors.red,
    Colors.yellow,
    Colors.greenAccent,
    Colors.blue,
    Colors.purple,
    Colors.pink
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.extent(
        maxCrossAxisExtent: 200,
        children: List.generate(icon.length, (index) {
          return Card(
            color: color[index],
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(icon[index]),
                Text(data[index],style: const TextStyle(color: Colors.white),),
              ],
            ),
          );
        }),
      ),
    );
  }
}
