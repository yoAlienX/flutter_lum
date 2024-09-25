import 'package:firstproject/assignments/Store%20App%20UI/poduct_detail_page.dart';
import 'package:firstproject/assignments/Store%20App%20UI/shopping_cart.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';

void main() {
  runApp(MaterialApp(
    home: StoreMainUI(),
    debugShowCheckedModeBanner: false,
    routes: {
      'blah' : (context) => ProductDetailPage(),
      'orders': (context) => ShoppingCart(),
    },
  ));
}

class StoreMainUI extends StatefulWidget {
  const StoreMainUI({super.key});

  @override
  State<StoreMainUI> createState() => _StoreMainUIState();
}

class _StoreMainUIState extends State<StoreMainUI> {
  var name = ['Cabbage', 'Bangla Tomato', 'Carrot', 'Potato', 'Beetroot'];
  var type = ['Vegetable', 'Fruit', 'Vegetable', 'Vegetable', 'Vegetable'];
  var image = [
    'assets/images/store_app_ui/cabbages.jpg',
    'assets/images/store_app_ui/tomato.jpg',
    'assets/images/store_app_ui/carrots.jpg',
    'assets/images/store_app_ui/Potatoes.jpg',
    'assets/images/store_app_ui/beetroot.jpg',
  ];
  var price = [
    '\$ 8.99',
    '\$ 13.91',
    '\$ 12.99',
    '\$ 9.49',
    '\$ 10.29',
  ];

  var index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: const Color(0xF4F4F4FF),
        child: ListView(
          children: const [
            UserAccountsDrawerHeader(
              accountName: Text('Guest'),
              accountEmail: Text(''),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/images/hacker.gif"),
              ),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/bg.png"),
                      fit: BoxFit.cover)),
              arrowColor: Colors.blue,
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
            ),
            ListTile(
              leading: Icon(Icons.category),
              title: Text('Categories'),
            ),
            ListTile(
              leading: Icon(Icons.local_offer),
              title: Text('Today\'s Deals'),
            ),
            ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text('My Cart'),
            ),
            ListTile(
              leading: Icon(Icons.history),
              title: Text('My Orders'),
            ),
            ListTile(
              leading: Icon(Icons.favorite),
              title: Text('Favorites'),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Account Settings'),
            ),
            ListTile(
              leading: Icon(Icons.help),
              title: Text('Help & Support'),
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('About Us'),
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Log Out'),
            ),
          ],
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            actions: [
              PreferredSize(
                preferredSize: Size.zero,
                child: Container(
                  child: Stack(
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'orders');
                        },
                        icon: Icon(Ionicons.cart_outline),
                      ),
                      Positioned(
                        right: 2,
                        top: 7,
                        child: Container(
                          height: 14,
                          width: 14,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.red),
                          child: Center(
                              child: Text(
                                '4',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 8,
                                    color: Colors.white70),
                              )),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
            flexibleSpace: FlexibleSpaceBar(
              background: Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 60, left: 8, right: 8),
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white60,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                          icon: Icon(Icons.tune),
                          color: Colors.black,
                          onPressed: () {},
                        ),
                        hintText: 'Search for products',
                        prefixIcon: Icon(Icons.search, color: Colors.black),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            expandedHeight: 120,
            title: Text(
              'Store',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(top: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        padding: EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white60, width: 0.5),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            Icon(
                              FontAwesomeIcons.carrot,
                              size: 18,
                              color: Colors.green,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Vegetables',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        padding: EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white60, width: 0.5),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            Icon(
                              FontAwesomeIcons.appleAlt,
                              size: 18,
                              color: Colors.redAccent,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Fruits',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        padding: EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white60, width: 0.5),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            Icon(
                              FontAwesomeIcons.drumstickBite,
                              size: 18,
                              color: Colors.brown,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Meat',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        padding: EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white60, width: 0.5),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            Icon(
                              FontAwesomeIcons.fish,
                              size: 18,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Fish',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        padding: EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white60, width: 0.5),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            Icon(
                              FontAwesomeIcons.tags,
                              size: 18,
                              color: Colors.yellow[800],
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Todays Deals',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverGrid(
            delegate: SliverChildBuilderDelegate((context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          image[index],
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        name[index],
                        style: GoogleFonts.nunito(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        type[index],
                        style: TextStyle(fontSize: 12),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10, left: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              price[index],
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                Navigator.pushNamed(context, 'blah');
                              },
                              icon: Icon(Icons.add),
                              style: ElevatedButton.styleFrom(
                                foregroundColor: Colors.white,
                                backgroundColor: Colors.green,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                fixedSize: Size(40, 40),
                                padding: EdgeInsets.zero,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }, childCount: name.length),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 5,
              childAspectRatio: 0.85,
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (tapindex) {
          setState(() {
            index = tapindex;
          });
        },
        selectedItemColor: Colors.green,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.grid_view_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.receipt_long),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: '',
          ),
        ],
      ),
    );
  }
}
