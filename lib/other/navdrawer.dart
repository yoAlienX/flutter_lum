import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Navdrawer(),
  ));
}

class Navdrawer extends StatefulWidget {
  const Navdrawer({super.key});

  @override
  State<Navdrawer> createState() => _NavdrawerState();
}

class _NavdrawerState extends State<Navdrawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigation Drawer'),
      ),
      drawer: Drawer(
        backgroundColor: const Color(0xF4F4F4FF),
        child: ListView(
          children: const [
            UserAccountsDrawerHeader(
              accountName: Text('Name 1'),
              accountEmail: Text('name1@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/images/hacker.gif"),
              ),
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundImage: AssetImage("assets/images/incognito.png"),
                ),
              ],
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/bg.png"),
                      fit: BoxFit.cover)),
              arrowColor: Colors.blue,
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
            ),ListTile(
              leading: Icon(Icons.update),
              title: Text('Updates'),
            ),ListTile(
              leading: Icon(Icons.send_rounded),
              title: Text('Sent'),
            ),ListTile(
              leading: Icon(Icons.drafts),
              title: Text('Draft'),
            ),ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
            ),
          ],
        ),
      ),
      body: Center(
        child: GestureDetector(
          child: const Text('show'),
          // Gesture detector is used to make a non-button widget with properties of button ??
          onTap: () => show(context),
        ),
      ),
    );
  }

  show(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return ListView(
            children: const [
              ListTile(
                title: Text('data 1'),
                subtitle: Text('detail 1'),
              ),
              ListTile(
                title: Text('data 2'),
                subtitle: Text('detail 2'),
              ),
              ListTile(
                title: Text('data 3'),
                subtitle: Text('detail 3'),
              ),
              ListTile(
                title: Text('data 4'),
                subtitle: Text('detail 4'),
              ),
            ],
          );
        });
  }
}
