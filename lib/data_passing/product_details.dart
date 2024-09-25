import 'package:firstproject/data_passing/products.dart';
import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    final id = ModalRoute.of(context)?.settings.arguments;
    final data = products.firstWhere((product) => product['id'] == id);
    return Scaffold(
      body: SingleChildScrollView(
        child: Card(
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(image: AssetImage('${data['image']}'), fit: BoxFit.cover, height: 400,),
              SizedBox(height: 10,),
              Text('${data['name']}', style: TextStyle(fontSize: 20),),
              Text('${data['description']}', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
              SizedBox(height: 15,),
              Text('${data['price']}', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),
            ],
          ),
        ),
      ),
    );
  }
}
