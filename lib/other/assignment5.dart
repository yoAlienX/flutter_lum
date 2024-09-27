import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MaterialApp(
    home: Gridviewwithslivereg(),
  ));
}

class Gridviewwithslivereg extends StatefulWidget {
  const Gridviewwithslivereg({super.key});


  @override
  State<Gridviewwithslivereg> createState() => _GridviewwithsliveregState();
}

class _GridviewwithsliveregState extends State<Gridviewwithslivereg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Grid View Builder',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue,
        leading: const Icon(FontAwesomeIcons.arrowLeft),
      ),
      body: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, crossAxisSpacing: 15, mainAxisSpacing: 15),
        children: [
          Container(
            color: Colors.green,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(FontAwesomeIcons.car),
                Text("Car"),
              ],
            ),
          ),
          Container(
            color: Colors.blueAccent,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(FontAwesomeIcons.bicycle),
                Text("Bicycle"),
              ],
            ),
          ),
          Container(
            color: Colors.red,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.directions_boat),
                Text("Boat"),
              ],
            ),
          ),
          Container(
            color: Colors.yellow,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(FontAwesomeIcons.bus),
                Text("Bus"),
              ],
            ),
          ),
          Container(
            color: Colors.indigo,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.train),
                Text("Train"),
              ],
            ),
          ),
          Container(
            color: Colors.cyan,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.directions_walk),
                Text("Walk"),
              ],
            ),
          ),
          Container(
            color: Colors.deepPurple,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.contact_phone),
                Text("Contact"),
              ],
            ),
          ),
          Container(
            color: Colors.purple,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.duo),
                Text("Duo"),
              ],
            ),
          ),
          Container(
            color: Colors.teal,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.hourglass_bottom),
                Text("Hour"),
              ],
            ),
          ),
          Container(
            color: Colors.brown,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(FontAwesomeIcons.mobile),
                Text("Mobile"),
              ],
            ),
          ),
          Container(
            color: Colors.white54,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.message),
                Text("Message"),
              ],
            ),
          ),
          Container(
            color: Colors.lime,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.key),
                Text("Key"),
              ],
            ),
          ),
          Container(
            color: Colors.deepOrange,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.wifi),
                Text("Wifi"),
              ],
            ),
          ),
          Container(
            color: Colors.pinkAccent,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.bluetooth),
                Text("Bluetooth"),
              ],
            ),
          ),
          Container(
            color: Colors.grey,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(FontAwesomeIcons.faceSmileBeam),
                Text("Smile"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
