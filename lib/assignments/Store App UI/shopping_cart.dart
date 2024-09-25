import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// void main() {
//   runApp(MaterialApp(
//     home: ShoppingCart(),
//     debugShowCheckedModeBanner: false,
//   ));
// }

class ShoppingCart extends StatefulWidget {
  ShoppingCart({super.key});

  @override
  State<ShoppingCart> createState() => _ShoppingCartState();
}

class _ShoppingCartState extends State<ShoppingCart> {
  var name = ['Cabbage', 'Bangla Tomato', 'Carrot', 'Potato', 'Beetroot', 'Beef'];
  var amount = [
    '3 kg',
    '2 kg',
    '1.5 kg',
    '4 kg',
    '2 kg',
    '8 kg',
    '8 Pcs'
  ];
  var type = ['Vegetable', 'Vegetable', 'Vegetable', 'Vegetable', 'Vegetable', 'Meat'];
  var image = [
    'assets/images/store_app_ui/cabbages.jpg',
    'assets/images/store_app_ui/tomato.jpg',
    'assets/images/store_app_ui/carrots.jpg',
    'assets/images/store_app_ui/Potatoes.jpg',
    'assets/images/store_app_ui/beetroot.jpg',
    'assets/images/store_app_ui/meat/beef-meat.jpg'
  ];
  var price = [
    '\$ 8.99',
    '\$ 13.91',
    '\$ 12.99',
    '\$ 9.49',
    '\$ 10.29',
    '\$ 27.99'
  ];
  var status = [
    'Processing',
    'Pending',
    'Delivered',
    'Delivered',
    'Cancelled',
    'Delivered',
  ];
  var date = [
    '20 Sep, 2024',
    '26 Jun, 2024',
    '16 Mar, 2024',
    '16 Mar, 2024',
    '01 Feb, 2024',
    '31 Jan, 2024',
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Order',
            style: GoogleFonts.overpass(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          centerTitle: true,
          toolbarHeight: 80,
          flexibleSpace: Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.arrow_back_ios,
                        color: Colors.black,
                        size: 15,
                      ),
                      SizedBox(width: 3),
                      Text(
                        "Back",
                        style: GoogleFonts.nunito(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          bottom: TabBar(
              indicator: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(10),
              ),
              labelColor: Colors.white,
              dividerColor: Colors.white60,
              indicatorColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              tabs: const [
                Tab(
                  child: Center(child: Text('All')),
                ),
                Tab(
                  child: Center(child: Text("Pending")),
                ),
                Tab(
                  child: Center(child: Text("Processing")),
                ),
                Tab(
                  child: Center(child: Text("Delivered")),
                ),
              ]),
        ),
        body: TabBarView(children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: ListView.builder(
                itemBuilder: (context, index) {
                  return SizedBox(
                    height: 100,
                    child: Card(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ListTile(
                            leading: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image(
                                image: AssetImage(image[index]),
                                fit: BoxFit.cover,
                                width: 120,
                              ),
                            ),
                            title: Text(
                              '${name[index]} (${amount[index]})',
                              style: const TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                            ),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  price[index],
                                  style: const TextStyle(
                                    color: Colors.green,
                                      fontSize: 18, fontWeight: FontWeight.bold),
                                ),Text(
                                  status[index],
                                  style: const TextStyle(
                                      fontSize: 13,),
                                ),
                              ],
                            ),
                            trailing: Padding(
                              padding: const EdgeInsets.only(top: 35),
                              child: Text(date[index]),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
                itemCount: name.length),
          ),
          Center(
            child: Text('Pending'),
          ),
          Center(
            child: Text('Processing'),
          ),
          Center(
            child: Text('Delivered'),
          ),
        ]),

        // body: Padding(
        //   padding: const EdgeInsets.only(top: 20),
        //   child: ListView.separated(
        //       itemBuilder: (context, index) {
        //         return Card(
        //           color: Colors.orange,
        //           child: Column(
        //             children: [
        //               ListTile(
        //                 leading: SizedBox(
        //                   child: Image(
        //                     image: AssetImage(images[index]),
        //                     fit: BoxFit.cover,
        //                     width: 100,
        //                   ),
        //                 ),
        //                 title: Text(
        //                   names[index],
        //                   style: const TextStyle(
        //                       fontSize: 20, fontWeight: FontWeight.bold),
        //                 ),
        //                 subtitle: Column(
        //                   crossAxisAlignment: CrossAxisAlignment.start,
        //                   children: [
        //                     Text(
        //                       country[index],
        //                       style: const TextStyle(
        //                           fontSize: 16, fontWeight: FontWeight.bold),
        //                     ),
        //                     Text("Population: ${population[index]} million"),
        //                   ],
        //                 ),
        //               ),
        //             ],
        //           ),
        //         );
        //       },
        //       separatorBuilder: (context, index) {
        //         return const Divider(
        //           thickness: 20,
        //           color: Colors.white,
        //         );
        //       },
        //       itemCount: names.length),
        // ),
      ),
    );
  }
}
