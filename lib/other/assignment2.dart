import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Assignment2(),
  ));
}

class Assignment2 extends StatefulWidget {
  const Assignment2({super.key});

  @override
  State<Assignment2> createState() => _Assignment2State();
}

class _Assignment2State extends State<Assignment2> {
  var names = [
    'James',
    'Mathew',
    'Aju',
    'Anjaly',
    'Harold',
    'Ashika',
    'Anugrah',
    'Ebin',
    'Hari',
    'Anilit',
    'Abhinand',
    'Lolan',
    'Siva',
  ];

  var phone = [
    '9516320715',
    '7894653120',
    '3124648758',
    '2583159565',
    '9874651320',
    '7894651320',
    '7894254621',
    '8941202325',
    '7495612849',
    '9687345968',
    '9877852445',
    '4765198645',
    '7481563203',
  ];

  var colors = [
    Colors.indigo,
    Colors.lightBlue,
    Colors.purple,
    Colors.orange,
    Colors.blueGrey,
    Colors.teal,
    Colors.lime,
    Colors.pink,
    Colors.deepPurple,
    Colors.red,
    Colors.lightGreen,
    Colors.deepOrange,
    Colors.brown
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Simple Contact List"),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
         return Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: colors[index],
                child: const Icon(Icons.person_4),
              ),
              title: Text(names[index]),
              subtitle: Text(phone[index]),
              trailing: const Icon(Icons.arrow_forward_ios),
            ),
          );
        },
        itemCount: names.length,
      ),
    );
  }
}
