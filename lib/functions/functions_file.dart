//generating widgets function will be here

// creating stack function for slide menu .
//creating stack function for every coffe page

//create container for list view  under search text field
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

Widget listContainer(Color colorofcontainer1, Color colorofcontainer2,
    String text, Color textcolor) {
  return Container(
    width: 100.0,
    height: 40.0,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20.0),
      gradient: LinearGradient(colors: [
        colorofcontainer2,
        colorofcontainer1,
      ]),
    ),
    child: Center(
      child: Text(
        '$text',
        style: GoogleFonts.maitree(fontSize: 14.0, color: textcolor),
      ),
    ),
  );
}
