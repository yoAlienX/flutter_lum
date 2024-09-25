import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CustomWidget extends StatelessWidget {
  final Image? image;
  final double height;
  final String text;
  final TextStyle style;

  CustomWidget({required this.image, required this.height, required this.text, required this.style});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CarouselSlider(
            items: [
              Container(
                width: double.infinity,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: image,
                ),
              ),
            ],
            options: CarouselOptions(
              height: 200,
              viewportFraction: 0.8,
              initialPage: 0,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 4),
              autoPlayAnimationDuration: Duration(milliseconds: 1000),
              autoPlayCurve: Curves.easeInOutCubicEmphasized,
              enlargeCenterPage: true,
              enlargeFactor: 0.3,
            ),
          ),
          SizedBox(height: height,),
          Center(child: Text(text, style: style,)),
        ],
      ),
    );
  }
}
