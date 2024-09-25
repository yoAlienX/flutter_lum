import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: StarRatingSystem(),
    debugShowCheckedModeBanner: false,
  ));
}

class StarRatingSystem extends StatefulWidget {
  const StarRatingSystem({super.key});

  @override
  State<StarRatingSystem> createState() => _StarRatingSystemState();
}

class _StarRatingSystemState extends State<StarRatingSystem> {
  // List to hold the fill state for each star
  List<int> starStates = [0, 0, 0, 0]; // 0: empty, 1: 25%, 2: 50%, 3: 75%, 4: 100%

  void _updateStarFill(int index) {
    setState(() {
      // Determine the fill state for the clicked star
      int clickedState = (starStates[index] + 1) % 5;

      // Update all stars up to the clicked index to the clicked state
      for (int i = 0; i <= index; i++) {
        starStates[i] = clickedState;
      }

      // Check and reset stars that are after the clicked index
      for (int i = index + 1; i < starStates.length; i++) {
        if (starStates[i] > clickedState) {
          starStates[i] = 0;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Star Rating System"),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(4, (index) {
            return GestureDetector(
              onTap: () => _updateStarFill(index),
              child: buildStar(index, starStates[index]),
            );
          }),
        ),
      ),
    );
  }

  Widget buildStar(int index, int state) {
    double fillPercentage = state * 0.25;

    return Stack(
      children: [
        Icon(
          Icons.star_border, // Empty star background
          size: 50,
          color: Colors.grey,
        ),
        ClipRect(
          child: Align(
            alignment: Alignment.centerLeft,
            widthFactor: fillPercentage, // Fraction to control star fill
            child: Icon(
              Icons.star, // Filled star
              size: 50,
              color: Colors.yellow,
            ),
          ),
        ),
      ],
    );
  }
}
