import 'package:flutter/material.dart';

class Chats extends StatelessWidget {
  final List<String> name = ["AlienX (You)", "Hari", "Alan", "Ebin", "Robert", "Evelin", "Rose","John","Sasi","Thomas" ];
  final List<String> message = [
    'Hey',
    'Daa',
    'Naale vera',
    'ok da',
    'Sugham',
    'Dey mwonu',
    'Mm',
    'Aadaa',
    'Nee poda',
    'Good night',
  ];
  final List<String> time = [
    '10:20 PM',
    '9:44 PM',
    '6:26 PM',
    '2:09 PM',
    '12:24 PM',
    '10:36 AM',
    '6:01 AM',
    'Yesterday',
    'Yesterday',
    '9/1/24'
  ];
  final List<String> image = [
    'assets/images/deadpool.png',
    'assets/images/deadpool.png',
    'assets/images/deadpool.png',
    'assets/images/deadpool.png',
    'assets/images/deadpool.png',
    'assets/images/deadpool.png',
    'assets/images/deadpool.png',
    'assets/images/deadpool.png',
    'assets/images/deadpool.png',
    'assets/images/deadpool.png',
  ];
  final List<Color> colors = [
    Colors.green,
    Colors.blue,
    Colors.yellow,
    Colors.grey,
    Colors.blueGrey,
    Colors.green,
    Colors.blue,
    Colors.yellow,
    Colors.grey,
    Colors.blueGrey
  ];

  Chats({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              cursorColor: Colors.green,
              autofocus: true,
              decoration: InputDecoration(
                hintText: 'Ask Meta AI or Search',
                hintStyle: const TextStyle(fontSize: 14),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(color: Colors.grey),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: name.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(image[index]),
                    backgroundColor: colors[index],
                  ),
                  title: Text(name[index]),
                  subtitle: Text(message[index]),
                  trailing: Column(
                    children: [
                      Text(time[index]),
                      const Icon(Icons.circle, color: Colors.green,)
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
