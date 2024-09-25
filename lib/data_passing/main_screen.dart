import 'package:firstproject/data_passing/product_details.dart';
import 'package:firstproject/data_passing/products.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MainScreen(),routes: {
    'productDetails': (context) => ProductDetails(),
  },));
}
class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      children: products.map((product) => GestureDetector(
        child: Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(image: AssetImage(product['image']), height: 400, width: double.infinity,),
              SizedBox(height: 13,),
              Text(product['name'], style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            ],
          ),
        ),
        onTap: () => getProduct(context, product['id']),
      )).toList(),
      ),
    );
  }
  void getProduct(BuildContext context, product_id) {
    Navigator.pushNamed(context, 'productDetails', arguments: product_id);
  }
}
