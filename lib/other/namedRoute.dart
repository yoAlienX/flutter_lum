import 'package:flutter/material.dart';

import '../Custom Widget/customUI.dart';
import 'gridviewbuilder.dart';

void main() {
  runApp(MaterialApp(
    home: NamedRoute(),
    debugShowCheckedModeBanner: false,
    routes: {
      "grid" : (context) => Gridviewbuilder(),
      "custom_ui" : (context) => CustomUI(),
},
  ));
}

class NamedRoute extends StatelessWidget {
  const NamedRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,

          children: [
            ElevatedButton(
              // style: ElevatedButton.styleFrom(),
                onPressed: () {
                  Navigator.pushNamed(context, 'grid');
                }, child: Center(child: Text('Gridview builder'))),
            SizedBox(height: 20,),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'custom_ui');
                }, child: Center(child: Text('Custom UI'))),
          ],
        ),
      ),
    );
  }
}
