import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


void main() {
  runApp(const MaterialApp(
    home: Bottomnavigation(),
    debugShowCheckedModeBanner: false,
  ));
}

class Bottomnavigation extends StatefulWidget {
  const Bottomnavigation({super.key});

  @override
  State<Bottomnavigation> createState() => _BottomnavigationState();
}

class _BottomnavigationState extends State<Bottomnavigation> {
  int index = 1;
  var screen = [
    'Profile',
    'Chat',
    'Call',
    'Contact',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'I am Pain ...',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black87,
        actions: [
          const Icon(
            Icons.search,
            color: Colors.white,
          ),
          PopupMenuButton(
              color: Colors.black,
              itemBuilder: (context) {
                return [
                  const PopupMenuItem(
                      child: Text(
                    'Invite',
                    style: TextStyle(color: Colors.white),
                  )),
                  const PopupMenuItem(
                      child: Text(
                    'Refresh',
                    style: TextStyle(color: Colors.white),
                  )),
                  const PopupMenuItem(
                      child: Text(
                    'Devices',
                    style: TextStyle(color: Colors.white),
                  )),
                ];
              })
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,
          onTap: (tapindex) {
            setState(() {
              index = tapindex;
            });
          },
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          type: BottomNavigationBarType.shifting,
          // backgroundColor: Colors.black,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
              backgroundColor: Colors.black,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: 'Chat',
              backgroundColor: Colors.black,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.call),
              label: 'Call',
              backgroundColor: Colors.black,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.contacts),
              label: 'Contact',
              backgroundColor: Colors.black,
            ),
          ]),
      body: Center(
        child: Text(screen[index]),
      ),
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        foregroundColor: Colors.white,
        backgroundColor: Colors.black,
        child: const FaIcon(FontAwesomeIcons.addressBook),
      ),
    );
  }
}
