import 'package:flutter/material.dart';

class CustomWidgetbyLumi extends StatelessWidget {
  /// Either call late or the error changes when the constructor is called.
  final Image img;
  final Text title;
  final Text? sub;
  VoidCallback onpress;
  final Icon? icon;

  CustomWidgetbyLumi(
      {required this.img,
      required this.title,
      this.sub,
      this.icon,
      required this.onpress});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: img,
        title: title,
        subtitle: sub,
        trailing: icon,
        onTap: onpress,
      ),
    );
  }
}
