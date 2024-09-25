import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';

// void main() {
//   runApp(MaterialApp(
//     home: ProductDetailPage(),
//     debugShowCheckedModeBanner: false,
//   ));
// }

class ProductDetailPage extends StatefulWidget {
  const ProductDetailPage({super.key});

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        toolbarHeight: 80,
        flexibleSpace: Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Row(
                  children: [
                    Icon(
                      Icons.arrow_back_ios,
                      size: 15,
                    ),
                    Text('Back')
                  ],
                ),
              ),
              PreferredSize(
                preferredSize: Size.zero,
                child: Positioned(
                  child: Container(
                    child: Stack(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Ionicons.cart_outline),
                        ),
                        Positioned(
                          right: 1,
                          top: 5,
                          child: Container(
                            height: 12,
                            width: 12,
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
              ),
            ],
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image(
                        image: AssetImage(
                          'assets/images/store_app_ui/tomato.jpg',
                        ),
                        height: 300,
                      ))),
              const SizedBox(
                height: 5,
              ),
              Text(
                'Bangla Tomato',
                style: GoogleFonts.nunito(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              const Text(
                'Vegetable',
                style: TextStyle(fontSize: 13),
              ),
              const Row(
                children: [
                  Icon(
                    size: 15,
                    Icons.star,
                    color: Colors.green,
                  ),
                  Icon(
                    size: 15,
                    Icons.star,
                    color: Colors.green,
                  ),
                  Icon(
                    size: 15,
                    Icons.star,
                    color: Colors.green,
                  ),
                  Icon(
                    size: 15,
                    Icons.star,
                    color: Colors.green,
                  ),
                  Icon(
                    size: 15,
                    Icons.star_outlined,
                    color: Colors.grey,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 0.75),
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              FontAwesomeIcons.minus,
                              size: 15,
                            )),
                        Text('1'),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(FontAwesomeIcons.plus, size: 15)),
                      ],
                    ),
                  ),
                  Text(
                    '\$ 13.91',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 22,
              ),
              Text(
                'About the product',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              Text(
                  'Bangla Tomato is a variety of tomato known for its vibrant red color, juicy texture, and rich, tangy flavor. Typically smaller and rounder than other types of tomatoes, Bangla Tomatoes are commonly used in a wide range of dishes, adding a fresh and zesty element to salads, curries, and sauces. They are a popular choice in Bengali cuisine, prized for their natural sweetness and slight tartness, making them perfect for both raw consumption and cooking. Packed with vitamins and antioxidants, Bangla Tomatoes are a nutritious and flavorful ingredient in many recipes.'),
            ],
          ),
        ),
      ),

      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 0.75),
                    borderRadius: BorderRadius.circular(10)),
                child: IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.favorite_outline)
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    backgroundColor: Colors.green,
                    padding:
                    EdgeInsets.symmetric(horizontal: 80, vertical: 15)),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Ionicons.cart_outline,
                      color: Colors.white,
                    ),
                    SizedBox(width: 15),
                    Text(
                      "Add to Cart",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

    );
  }
}
