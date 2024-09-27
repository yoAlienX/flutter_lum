import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Customscroll(),
  ));
}

class Customscroll extends StatefulWidget {
  const Customscroll({super.key});

  @override
  State<Customscroll> createState() => _CustomscrollState();
}

class _CustomscrollState extends State<Customscroll> {
  var name = [
    "Rahul",
    "Hari",
    "Me",
    "Ebin",
    "Minnal",
    "Rahul",
    "Hari",
    "Me",
    "Ebin",
    "Minnal",
    "Rahul",
    "Hari",
    "Me",
    "Ebin",
    "Minnal",
  ];
  var phone = [
    '1234567890',
    '9283746567',
    '91******50',
    '9283746501',
    '8172635490',
    '1234567890',
    '9283746567',
    '91******50',
    '9283746501',
    '8172635490',
    '1234567890',
    '9283746567',
    '91******50',
    '9283746501',
    '8172635490',
  ];
  var image = [
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
    'assets/images/deadpool.png',
    'assets/images/deadpool.png',
    'assets/images/deadpool.png',
    'assets/images/deadpool.png',
    'assets/images/deadpool.png',
  ];
  var colors = [
    Colors.green,
    Colors.blue,
    Colors.yellow,
    Colors.grey,
    Colors.blueGrey,
    Colors.green,
    Colors.blue,
    Colors.yellow,
    Colors.grey,
    Colors.blueGrey,
    Colors.green,
    Colors.blue,
    Colors.yellow,
    Colors.grey,
    Colors.blueGrey,
  ];
  var icon = [
    Icons.account_balance,
    Icons.add_alert,
    Icons.access_alarm_rounded,
    Icons.add_circle,
    Icons.ac_unit,
    Icons.games,
    Icons.add_alert,
    Icons.access_alarm_rounded,
    Icons.add_circle,
    Icons.ac_unit,
    Icons.games,
    Icons.add_alert,
    Icons.access_alarm_rounded,
    Icons.add_circle,
    Icons.ac_unit,
  ];
  var data = [
    'Account Balance',
    'add_alert',
    'access_alarm_rounded',
    'add_circle',
    'ac_unit',
    'games',
    'Account Balance',
    'add_alert',
    'access_alarm_rounded',
    'add_circle',
    'ac_unit',
    'games',
    'Account Balance',
    'add_alert',
    'access_alarm_rounded',
    'add_circle',
    'ac_unit',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            pinned: true,
            title: const Text('Appbar'),
            actions: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
              IconButton(onPressed: () {}, icon: const Icon(Icons.find_in_page)),
            ],
            backgroundColor: Colors.grey,
            bottom: AppBar(
              title: Container(
                  color: Colors.white,
                  child: const TextField(
                    decoration: InputDecoration(
                        hintText: 'Search ...',
                        prefixIcon: Icon(Icons.search),
                        prefixIconColor: Colors.black,
                        border: InputBorder.none),
                  )),
            ),
            expandedHeight: 150,
          ),

          SliverToBoxAdapter(
            child: Container(
              color: Colors.blueGrey,
              height: 60,
              child: const Center(child: Text('New data 👇👇👇',style: TextStyle(fontSize: 20),)),
            ),
          ),

          SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
            return Card(
              color: colors[index],
              child: ListTile(
                leading: Image(image: AssetImage(image[index])),
                title: Text(name[index]),
                subtitle: Text(phone[index]),
                trailing: const Icon(Icons.call),
              ),
            );
          }, childCount: name.length)),

          SliverToBoxAdapter(
            child: Container(
              color: Colors.blueGrey,
              height: 60,
              child: const Center(child: Text('New data 👇👇👇', style: TextStyle(fontSize: 20),)),
            ),
          ),

          SliverGrid(
              delegate: SliverChildBuilderDelegate((context, index) {
                return Container(
                  color: colors[index],
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(icon[index]),
                      Text(data[index]),
                    ],
                  ),
                );
              }, childCount: name.length),
              gridDelegate:
                  const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3))
        ],
      ),
    );
  }
}
