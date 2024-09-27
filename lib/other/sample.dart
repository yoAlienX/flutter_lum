import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Homepage1(),
  ));
}

class Homepage1 extends StatelessWidget {
  const Homepage1({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Annaa Melcow!",
          style: TextStyle(
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.italic),
        ),
        backgroundColor: Colors.blueAccent,
      ),
      body: Container(
        decoration: const BoxDecoration(
          // gradient: LinearGradient(
          //     colors: [Colors.blue, Colors.pink],
          //     begin: Alignment.centerLeft,
          //     end: Alignment.centerRight)),
          image: DecorationImage(
              image: AssetImage("assets/images/bg.png"), fit: BoxFit.fill),
        ),
        height: double.infinity,
        width: double.infinity, // to extend the width
        // color: Colors.blue[200],
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Icon(
            //   Icons.account_tree_sharp,
            //   size: 40,
            //   color: Colors.pinkAccent,
            // ),
            Image(
              image: AssetImage("assets/images/deadpool.png"),
              height: 50,
              width: 50,
            ),
            Text(
              "Deadpool Annan 😈",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white70,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal),
            ),
          ],
        ),
      ),
    );
  }
}
