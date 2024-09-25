import 'package:firstproject/assignments/stack%20ui/stackuicontent.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

void main() {
  runApp(const MaterialApp(
    home: StackUi(),
  ));
}

class StackUi extends StatefulWidget {
  const StackUi({super.key});

  @override
  State<StackUi> createState() => _StackUiState();
}

class _StackUiState extends State<StackUi> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (tapindex) {
          setState(() {
            index = tapindex;
          });
        },
        selectedItemColor: Colors.blue,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Ionicons.home_outline),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Ionicons.search_outline),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Ionicons.pie_chart_outline),
            label: 'Data',
          ),
          BottomNavigationBarItem(
            icon: Icon(Ionicons.person_outline),
            label: 'Account',
          ),
        ],
      ),
      body: content(index)
    );
  }

  content(index) {
    switch (index) {
      case 0:
        return const Center(child: Text('Home', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),));
      case 1:
        return const Center(child: Text('Search', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),));
      case 2:
        return const Center(child: Text('Data', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),));
      case 3:
        return const Stackuicontent();
    }
  }
}
