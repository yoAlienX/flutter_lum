import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: HomePage(),
    debugShowCheckedModeBanner: false,
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Card(
            color: Colors.grey[100],
            child: const ListTile(
              leading: Image(image: AssetImage("assets/images/deadpool.png")),
              title: Text("Arun Maini"),
              subtitle: Text("7984651320"),
              trailing: Icon(Icons.call_sharp),
            ),
          ),
          Card(
            color: Colors.grey[100],
            child: const ListTile(
              leading: Image(image: AssetImage("assets/images/deadpool.png")),
              title: Text("Ebin Mwon"),
              subtitle: Text("9873216540"),
              trailing: Icon(Icons.call_sharp),
            ),
          ),
          Card(
            color: Colors.grey[100],
            child: const ListTile(
              leading: Image(image: AssetImage("assets/images/deadpool.png")),
              title: Text("Hari Mwon"),
              subtitle: Text("6549873210"),
              trailing: Icon(Icons.call_sharp),
            ),
          ),
          Card(
            color: Colors.grey[100],
            child: const ListTile(
              leading: Image(image: AssetImage("assets/images/deadpool.png")),
              title: Text("Rahul Mwon"),
              subtitle: Text("3206519847"),
              trailing: Icon(Icons.call_sharp),
            ),
          ),
          Card(
            color: Colors.grey[100],
            child: const ListTile(
              leading: Image(image: AssetImage("assets/images/deadpool.png")),
              title: Text("Me"),
              subtitle: Text("**********"),
              trailing: Icon(Icons.call_sharp),
            ),
          ),
          Card(
            color: Colors.grey[100],
            child: const ListTile(
              leading: Image(image: AssetImage("assets/images/deadpool.png")),
              title: Text("You"),
              subtitle: Text("9518476230"),
              trailing: Icon(Icons.call_sharp),
            ),
          ),
          Card(
            color: Colors.grey[100],
            child: const ListTile(
              leading: Image(image: AssetImage("assets/images/deadpool.png")),
              title: Text("Paatta"),
              subtitle: Text("----------"),
              trailing: Icon(Icons.call_sharp),
            ),
          ),
        ],
      ),
    );
  }
}
