import 'package:clone_ui_1/screens/coffe_screen.dart';
import 'package:clone_ui_1/screens/main_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//stack function for slide menu .
Widget stackItem(String photoAsset, String name, String quantity, double price,
    BuildContext context) {
  return Container(
    width: 200.0,
    height: 350.0,
    child: Stack(
      children: [
        Positioned(
          top: 90,
          child: Container(
            width: 180.0,
            height: 290.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(80.0),
                topRight: Radius.circular(80.0),
                bottomLeft: Radius.circular(15.0),
                bottomRight: Radius.circular(15.0),
              ),
              color: Colors.brown[500],
            ),
          ),
        ),
        Positioned(
            bottom: 190,
            right: 10,
            child: Container(
              width: 200.0,
              height: 200.0,
              child: Image(
                image: AssetImage(photoAsset),
              ),
            )),
        Positioned(
            top: 245.0,
            left: 43.0,
            child: Center(
              child: Text(
                '$name',
                style: GoogleFonts.robotoCondensed(
                  fontSize: 22.0,
                ),
              ),
            )),
        Positioned(
            top: 275.0,
            left: 65.0,
            child: Center(
              child: Text(
                '$quantity',
                style: GoogleFonts.robotoCondensed(
                  fontSize: 22.0,
                ),
              ),
            )),
        Positioned(
            bottom: 30.0,
            left: 20.0,
            child: Container(
              width: 90.0,
              height: 50.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.brown[900],
              ),
              child: Center(
                child: Text(
                  '\$ ${price.toString()}',
                  style: GoogleFonts.robotoCondensed(
                      color: Colors.white, fontSize: 20.0),
                ),
              ),
            )),
        Positioned(
            bottom: 30.0,
            left: 120.0,
            child: Container(
              width: 50.0,
              height: 50.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: Colors.brown[900],
              ),
              child: IconButton(
                onPressed: () {
                  //go to coffe page
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CoffeScreen(
                              imgPath: photoAsset,
                              description: 'description',
                              price: price,
                              quantity: quantity,
                              name: name)));
                },
                icon: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
            )),
      ],
    ),
  );
}

// container for list view  under search text field

Widget listContainer(Color colorofcontainer1, Color colorofcontainer2,
    String text, Color textcolor) {
  return Container(
    width: 100.0,
    height: 40.0,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10.0),
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

// stack function for every coffe page
Widget coffeScreenGenerator(String name, String imgPath, String description,
    double price, String quantity, BuildContext context) {
  return Stack(
    children: [
      Positioned(
          child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height / 2,
        child: ClipRRect(
          child: Image(
              image: AssetImage('assets/brownph.jpeg'), fit: BoxFit.cover),
        ),
      )),
      Positioned(
          top: 280.0,
          right: 108.0,
          child: Container(
            width: 200.0,
            height: 200.0,
            child: Image(
              image: AssetImage(imgPath),
            ),
          )),
      Positioned(
          bottom: 250.0,
          left: 140.0,
          child: Text(
            '$name',
            style: GoogleFonts.robotoCondensed(
                fontSize: 30.0, fontWeight: FontWeight.bold),
          )),
      Positioned(
          bottom: 220.0,
          left: 170.0,
          child: Text(
            '$quantity',
            style: GoogleFonts.robotoCondensed(
                fontSize: 30.0, fontWeight: FontWeight.w500),
          )),
      Positioned(
          bottom: 200.0,
          child: Padding(
            padding: EdgeInsets.only(left: 15.0),
            child: Text('DESCRIPTION',
                style: GoogleFonts.robotoCondensed(
                  fontSize: 20.0,
                  color: Colors.brown[500],
                  fontWeight: FontWeight.bold,
                )),
          )),
      Positioned(
          top: 50.0,
          child: IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MainScreen()));
            },
            icon: Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Colors.black,
            ),
          )),
    ],
  );
}
