import 'dart:async';
import 'package:flutter/material.dart';
import 'loginpage.dart';
// Look for inState and setState --> ??

void main() {
  runApp(const MaterialApp(
    home: Splashscreen(),
    debugShowCheckedModeBanner: false,
  ));
}

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  // const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    // TODO: implement initState
    Timer(const Duration(seconds: 2), () {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const loginpage.loginPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/white_bg.png"),
              fit: BoxFit.fill),
        ),
        height: double.infinity,
        width: double.infinity, // to extend the width
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage("assets/images/hacker.gif"),
              height: 50,
              width: 50,
            ),
            Text(
              "Ningal safe aane! 👀",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black87,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal),
            ),
          ],
        ),
      ),
    );
  }
}
