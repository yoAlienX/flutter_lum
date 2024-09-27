import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: Alertboxwidget(),));
}

class Alertboxwidget extends StatefulWidget {
  const Alertboxwidget({super.key});

  @override
  State<Alertboxwidget> createState() => _AlertboxwidgetState();
}

class _AlertboxwidgetState extends State<Alertboxwidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue, // Button color
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            ),
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: const Text('Exit !!!'),
                      content: const Text('Do you want to exit?'),
                      actions: [
                        TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text('Yes')),
                        TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text('No')),
                        TextButton(
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.red,
                            ),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text('Cancel', style: TextStyle(color: Colors.white),)),
                      ],
                    );
                  });
            },
            child: const Text('Alert Box', style: TextStyle(fontSize: 20, color: Colors.white),)),
      ),
    );
  }
}
