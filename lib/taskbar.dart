import 'package:flutter/material.dart';
import 'package:firstproject/listviewbuilder.dart';
import 'package:firstproject/gridviewwithsliverfixed.dart';
import 'package:firstproject/staggeredgridview.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Taskbar(),
  ));
}

class Taskbar extends StatefulWidget {
  const Taskbar({super.key});

  @override
  State<Taskbar> createState() => _TaskbarState();
}

class _TaskbarState extends State<Taskbar> {
  
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('WhatsApp'),
          backgroundColor: Colors.green,
          actions: [
            const Icon(Icons.search),
            PopupMenuButton(itemBuilder: (context) {
              return [
                const PopupMenuItem(child: Text('Invite')),
                const PopupMenuItem(child: Text('Refresh')),
                const PopupMenuItem(child: Text('Logout'))
              ];
            }),
          ],
          bottom: TabBar(
              labelColor: Colors.white,
              dividerColor: Colors.yellow[200],
              indicatorColor: Colors.white,
              unselectedLabelColor: Colors.black,
              tabs: const [
                Tab(
                  child: Icon(Icons.camera_alt),
                ),
                Tab(
                  child: Text("Chat"),
                ),
                Tab(
                  child: Text("Status"),
                ),
                Tab(
                  child: Text("Contact"),
                ),
              ]),
        ),
        body: TabBarView(children: [
          const Center(
            child: Icon(Icons.camera_alt),
          ),
          Listviewbuilder(),
          const Gridviewwithsliverfixed(),
          const Staggeredgridview(),
        ]),
        floatingActionButton: FloatingActionButton(
          tooltip: 'New Message',
          onPressed: () {},
          backgroundColor: Colors.green,
          foregroundColor: Colors.white,
          child: const Icon(Icons.message),
        ),
      ),
    );
  }
}
