import 'package:firstproject/assignments/whatsapp/chats.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Whatsappui(),
    debugShowCheckedModeBanner: false,
  ));
}

class Whatsappui extends StatefulWidget {
  const Whatsappui({super.key});

  @override
  State<Whatsappui> createState() => _WhatsappuiState();
}

class _WhatsappuiState extends State<Whatsappui> {

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'WhatsApp',
          style: TextStyle(
              fontSize: 26, fontWeight: FontWeight.bold, color: Colors.green),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.qr_code_scanner),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.camera_alt_outlined),
            onPressed: () {},
          ),
          PopupMenuButton(itemBuilder: (context) {
            return [
              const PopupMenuItem(child: Text('New group')),
              const PopupMenuItem(child: Text('New broadcast')),
              const PopupMenuItem(child: Text('Linked devices')),
              const PopupMenuItem(child: Text('Starred messages')),
              const PopupMenuItem(child: Text('Payments')),
              const PopupMenuItem(child: Text('Settings')),
            ];
          }),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black,
          showUnselectedLabels: true,
          currentIndex: index,
          onTap: (tapindex) {
            setState(() {
              index = tapindex;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.message),
              label: 'Chats',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_reaction_rounded),
              label: 'Updates',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_3),
              label: 'Communities',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.call),
              label: 'Calls',
            ),
          ]),
      body: content(index),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        foregroundColor: Colors.white,
        backgroundColor: Colors.green,
        child: const Icon(Icons.message),
      ),
    );
  }
  content(int index) {
    switch (index) {
      case 0:
        return Chats();
      case 1:
        return const Center(child: Text('Updates', style: TextStyle(fontSize: 24)));
      case 2:
        return const Center(child: Text('Communities', style: TextStyle(fontSize: 24)));
      case 3:
        return const Center(child: Text('Calls', style: TextStyle(fontSize: 24)));
      default:
        return const Center(child: Text('Page not found', style: TextStyle(fontSize: 24)));
    }
  }
}
