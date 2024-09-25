import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MaterialApp(
    home: Gridviewcustom(),
  ));
}

class Gridviewcustom extends StatefulWidget {
  const Gridviewcustom({super.key});

  @override
  State<Gridviewcustom> createState() => _GridviewcustomState();
}

class _GridviewcustomState extends State<Gridviewcustom> {
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
      body: GridView.custom(
          gridDelegate:
              const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          childrenDelegate: SliverChildBuilderDelegate((context, index) {
            return Card(
              color: color[index],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(icon[index]),
                  Text(
                    data[index],
                    style: GoogleFonts.sairaExtraCondensed(
                      fontSize: 20
                    ),
                  ),
                ],
              ),
            );
          },childCount: data.length)),
    );
  }
}
