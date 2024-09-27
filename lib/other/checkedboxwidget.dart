import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Checkedboxwidget(),
    debugShowCheckedModeBanner: false,
  ));
}

class Checkedboxwidget extends StatefulWidget {
  const Checkedboxwidget({super.key});

  @override
  State<Checkedboxwidget> createState() => _CheckedboxwidgetState();
}

class _CheckedboxwidgetState extends State<Checkedboxwidget> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Checkbox(checkColor: Colors.black, activeColor: Colors.white,
                value: isChecked, onChanged: (bool ? value) {
              setState(() {
                isChecked = value!;
              });
            }),
            Text('Are you a bot?'),
          ],
        ),
      ),
    );
  }
}
