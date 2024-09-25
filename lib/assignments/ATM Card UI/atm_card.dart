import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(AtmCard());
}

class AtmCard extends StatelessWidget {
  const AtmCard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFFBF726C),
        body: Center(
          child: Container(
            height: 220,
            width: 350,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13),
              image: DecorationImage(
                  image: AssetImage('assets/images/atm_card_bg.jpg'),
                  fit: BoxFit.cover
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(.75),
                  spreadRadius: 5,
                  blurRadius: 20,
                  offset: const Offset(10, 20),
                ),
              ],
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 50,
                  left: 15,
                  child: Image(
                    image: AssetImage('assets/images/atm_chip.png'),
                    height: 50,
                    width: 100,
                  ),
                ),
                Positioned(
                    top: 180,
                    left: 250,
                    child: Image(
                      height: 30,
                      width: 100,
                      image: AssetImage('assets/images/atm_visa.png'),
                    )),
                Positioned(
                    top: -70,
                    left: 170,
                    child: Image(
                        height: 200,
                        width: 200,
                        image: AssetImage('assets/images/atm_logo.png'))),
                Positioned(
                    top: 60,
                    right: 20,
                    child: Image(
                        height: 40,
                        width: 40,
                        color: Colors.white70,
                        image:
                            AssetImage('assets/images/atm_contactless.png'))),
                Positioned(
                  top: 105,
                  left: 30,
                  child: Text(
                    '6522 3200 2345 9876',
                    style: GoogleFonts.spaceMono(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      letterSpacing: 4,
                    ),
                  ),
                ),
                Positioned(
                  top: 140,
                  left: 70,
                  child: Text(
                    'Valid \nThrough',
                    style: GoogleFonts.spaceMono(
                      color: Colors.white,
                      fontSize: 8,
                    ),
                  ),
                ),
                Positioned(
                  top: 140,
                  left: 115,
                  child: Text(
                    '08/23',
                    style: GoogleFonts.spaceMono(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 20,
                  left: 50,
                  child: Text(
                    'VINAYAK HEGDE',
                    style: GoogleFonts.spaceMono(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
