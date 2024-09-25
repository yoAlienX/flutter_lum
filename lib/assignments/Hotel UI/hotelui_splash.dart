import 'dart:async';
import 'package:firstproject/assignments/Hotel%20UI/loginforhotel.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MaterialApp(
    home: HoteluiSplash(),
    debugShowCheckedModeBanner: false,
  ));
}

class HoteluiSplash extends StatefulWidget {
  const HoteluiSplash({super.key});

  @override
  State<HoteluiSplash> createState() => _HoteluiSplashState();
}

class _HoteluiSplashState extends State<HoteluiSplash> {
  @override
  void initState() {
    Timer(const Duration(milliseconds: 1800), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => const Hotellogin()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.white70,
        child: Column(
          children: [
            Expanded(child: Image.asset('assets/images/logo 1.png', height: 160, width: 160,)),
            Padding(
              padding: const EdgeInsets.only(bottom: 50),
              child: Text('Book It!', style: GoogleFonts.akatab(color: Colors.black, fontSize: 15),),
            ),
          ],
        ),
      ),
    );
  }
}
