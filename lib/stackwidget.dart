import 'package:flutter/material.dart';
void main() {
  runApp(const MaterialApp(home: Stackwidget(),));
}
class Stackwidget extends StatefulWidget {
  const Stackwidget({super.key});

  @override
  State<Stackwidget> createState() => _StackwidgetState();
}

class _StackwidgetState extends State<Stackwidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(color: Colors.red, height: 500,width: 500, ),
          Positioned(right: 100, top: 100,height: 100, width: 100,child: Card(color: Colors.white, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),),),
          Positioned(right: 160, top: 160,height: 40, width: 40,child: Card(color: Colors.black, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)), ),),
          Positioned(left: 100, top: 100, height: 100, width: 100,child: Card(color: Colors.white,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),),),
          Positioned(left: 150, top: 300, height: 20, width: 200,child: Container(color: Colors.blue,),),
          Positioned(left: 160, top: 160,height: 40, width: 40,child: Card(color: Colors.black,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)), ),),

        ],
      ),
    );
  }
}
