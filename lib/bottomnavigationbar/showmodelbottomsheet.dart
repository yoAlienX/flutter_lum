import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Showmodelbottomsheet(),
  ));
}

class Showmodelbottomsheet extends StatefulWidget {
  const Showmodelbottomsheet({super.key});

  @override
  State<Showmodelbottomsheet> createState() => _ShowmodelbottomsheetState();
}

class _ShowmodelbottomsheetState extends State<Showmodelbottomsheet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          child: const Text('show'),
          // Gesture detector is used to make a non-button widget with properties of button ??
          onTap: () => show(context),
        ),
      ),
    );
  }

  show(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return ListView(
            children: const [
              ListTile(
                title: Text('data 1'),
                subtitle: Text('detail 1'),
              ),
              ListTile(
                title: Text('data 2'),
                subtitle: Text('detail 2'),
              ),
              ListTile(
                title: Text('data 3'),
                subtitle: Text('detail 3'),
              ),
              ListTile(
                title: Text('data 4'),
                subtitle: Text('detail 4'),
              ),
            ],
          );
        });
  }
}
