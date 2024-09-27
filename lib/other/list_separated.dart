import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: ListSeparated()));
}

class ListSeparated extends StatelessWidget {
  var months = [
    'Jan',
    'Feb',
    'Mar',
    'Apr',
    'May',
    'Jun',
    'Jul',
    'Aug',
    'Sep',
    'Oct',
    'Nov',
    'Dec'
  ];

  ListSeparated({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List Separated Example 2"),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return Card(
              color: Colors.grey[250],
              child: ListTile(
                title: Text(months[index]),
              ),
            );
          },
          separatorBuilder: (context, index) {
            if (index % 3 == 0) {
              return Card(
                child: Container(
                  color: Colors.orangeAccent,
                  child: const Text("Jai Balayya "),
                ),
              );
            } else {
              return const SizedBox();
            }
          },
          itemCount: months.length),
    );
  }
}
