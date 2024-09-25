import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Assignment6Gridviewbuilder(),
    debugShowCheckedModeBanner: false,
  ));
}

class Assignment6Gridviewbuilder extends StatelessWidget {
  var names = [
    'My Profile',
    'Book a Cab',
    'Booking Schedule',
    'Track Your Cab',
    'Help & Feedback',
    'Call to Transport',
    'Settings',
    'Log-out'
  ];
  var icons = [
    Icons.person,
    Icons.local_taxi,
    Icons.calendar_today,
    Icons.navigation,
    Icons.help,
    Icons.phone,
    Icons.settings,
    Icons.logout
  ];

  Assignment6Gridviewbuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu'),
        centerTitle: true,
        backgroundColor: Colors.amberAccent,
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Card(
                    elevation: 5,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(60)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Icon(
                          icons[index],
                          color: Colors.yellow,
                          size: 40,
                        ),
                      ),
                    ),
                  ),
                  Text(names[index]),
                ],
              ),
            ),
          );
        },
        itemCount: names.length,
      ),
    );
  }
}
