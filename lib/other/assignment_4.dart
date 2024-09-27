import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Assignment4(),
    debugShowCheckedModeBanner: false,
  ));
}

class Assignment4 extends StatelessWidget {
  var names = [
    'Delhi',
    'Finland',
    'London',
    'Vancouver',
    'New York',
    'Bangkok'
  ];

  var country = ['India', 'Europe', 'UK', 'Canada', 'USA', 'Thailand'];

  var population = [32.9, 5.54, 8.8, 2.6, 17.85, 6.9];

  var images = [
    "assets/images/delhi.png",
    "assets/images/finland.png",
    "assets/images/london.png",
    "assets/images/vancouver.png",
    "assets/images/new_york.png",
    "assets/images/bangkok.png",
  ];

  Assignment4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
        title: const Center(
          child: Text(
            "Cities Around World",
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
            ),
          ),
        ),
        backgroundColor: Colors.orange[800],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: ListView.separated(
            itemBuilder: (context, index) {
              return Card(
                color: Colors.orange,
                child: Column(
                  children: [
                    ListTile(
                      leading: SizedBox(
                        child: Image(
                          image: AssetImage(images[index]),
                          fit: BoxFit.cover,
                          width: 100,
                        ),
                      ),
                      title: Text(
                        names[index],
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            country[index],
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Text("Population: ${population[index]} million"),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
            separatorBuilder: (context, index) {
              return const Divider(
                thickness: 20,
                color: Colors.white,
              );
            },
            itemCount: names.length),
      ),
    );
  }
}
