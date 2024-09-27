import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(MaterialApp(home: Lottieexample(),));
}
class Lottieexample extends StatefulWidget {
  const Lottieexample({super.key});

  @override
  State<Lottieexample> createState() => _LottieexampleState();
}

class _LottieexampleState extends State<Lottieexample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.asset('assets/animations/loading_animation.json'),
      ),
    );
  }
}
