import 'package:flutter/material.dart';

class Hoteluimain extends StatefulWidget {
  const Hoteluimain({super.key});

  @override
  State<Hoteluimain> createState() => _HoteluimainState();
}

class _HoteluimainState extends State<Hoteluimain> {
  var prices = ['40', '30', '75', '73', '85'];
  var titles = [
    'Awesome Room near Boddha',
    'Awesome Room near Boddha',
    'Awesome Room near Boddha',
    'Awesome Room near Boddha',
    'Awesome Room near Boddha',
  ];
  var subtitles = [
    'Boddha, kathaamndu',
    'Boddha, kathaamndu',
    'Boddha, kathaamndu',
    'Boddha, kathaamndu',
    'Boddha, kathaamndu',
  ];
  var images = [
    'assets/images/vancouver.png',
    'assets/images/vancouver.png',
    'assets/images/vancouver.png',
    'assets/images/vancouver.png',
    'assets/images/vancouver.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            // pinned: true,
            expandedHeight: 180,
            backgroundColor: Colors.lightBlue[200],
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.favorite_border_outlined),
                ),
              ),
            ],
            flexibleSpace: Stack(
              children: [
                const Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Type Your Location',
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.zero,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        icon: const Icon(Icons.camera_alt_outlined),
                        color: Colors.black,
                        onPressed: () {},
                      ),
                      hintText: 'Search...',
                      prefixIcon: const Icon(Icons.search, color: Colors.black),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(45.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.red,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.hotel,
                          color: Colors.black,
                        ),
                        Text(
                          'Hotel',
                          style: TextStyle(color: Colors.black),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.blue,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.restaurant,
                          color: Colors.black,
                        ),
                        Text(
                          'Restaurant',
                          style: TextStyle(color: Colors.black),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.amber,
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.local_cafe,
                          color: Colors.black,
                        ),
                        Text(
                          'Cafe',
                          style: TextStyle(color: Colors.black),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Column(
                  children: [
                    Stack(
                      children: [
                        Image.asset(
                          images[index],
                          height: 180,
                          fit: BoxFit.cover,
                          width: double.infinity,
                        ),
                        Positioned(
                          bottom: 20,
                          right: 20,
                          child: Container(
                            width: 40,
                            height: 25,
                            color: Colors.white,
                            child: Center(
                                child: Text(
                              "\$ ${prices[index]}",
                              style: TextStyle(color: Colors.black),
                            )),
                          ),
                        ),
                      ],
                    ),
                    ListTile(
                      title: Text(
                        titles[index],
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Center(
                          child: Text(
                        subtitles[index],
                        style: TextStyle(fontSize: 12),
                      )),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.green,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.green,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.green,
                        ),
                        Icon(
                          Icons.star_half,
                          color: Colors.green,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          '(220 reviews)',
                          style: TextStyle(fontSize: 10),
                        ),
                      ],
                    ),
                    const Divider(
                      thickness: 1,
                      color: Colors.white,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                );
              },
              childCount: titles.length,
            ),
          ),
        ],
      ),
    );
  }
}
