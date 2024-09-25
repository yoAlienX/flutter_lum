import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(home: Cliprwidget(), debugShowCheckedModeBanner: false,));
}
class Cliprwidget extends StatefulWidget {
  const Cliprwidget({super.key});

  @override
  State<Cliprwidget> createState() => _CliprwidgetState();
}

class _CliprwidgetState extends State<Cliprwidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ClipRect(
            child: Container(
                child: Image(image: AssetImage('assets/images/ireland.png'))),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Container(
                child: Image(image: AssetImage('assets/images/ireland.png'))),
          ),
          ClipOval(
            child: Container(
                width: double.infinity,
                child: Image(image: NetworkImage('https://imgs.search.brave.com/xayi8f7fVrbzgP81RylXBFrEu2lsZy0Ansm9RiuQk3A/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly93YWxs/cGFwZXJhY2Nlc3Mu/Y29tL2Z1bGwvMjE1/OTMuanBn'))),
          ),
        ],
      ),
    );
  }
}
