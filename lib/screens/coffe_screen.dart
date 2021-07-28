import 'package:clone_ui_1/functions/vars.dart';
import 'package:clone_ui_1/screens/main_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CoffeScreen extends StatefulWidget {
  final String imgPath;
  final String description;
  final double price;
  final String quantity;
  final String name;
  const CoffeScreen(
      {Key? key,
      required this.imgPath,
      required this.description,
      required this.price,
      required this.quantity,
      required this.name})
      : super(key: key);

  @override
  _CoffeScreenState createState() => _CoffeScreenState();
}

class _CoffeScreenState extends State<CoffeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Positioned(
                child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2,
              child: ClipRRect(
                child: Image(
                    image: AssetImage('assets/brownph.jpeg'),
                    fit: BoxFit.cover),
              ),
            )),
            Positioned(
                top: 280.0,
                right: 108.0,
                child: Container(
                  width: 200.0,
                  height: 200.0,
                  child: Image(
                    image: AssetImage(widget.imgPath),
                  ),
                )),
            Positioned(
                bottom: 250.0,
                left: 140.0,
                child: Text(
                  '${widget.name}',
                  style: GoogleFonts.robotoCondensed(
                      fontSize: 30.0, fontWeight: FontWeight.bold),
                )),
            Positioned(
                bottom: 220.0,
                left: 170.0,
                child: Text(
                  '${widget.quantity}',
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
                bottom: 170.0,
                child: Padding(
                  padding: EdgeInsets.only(left: 15.0),
                  child: Text(
                    '${widget.description}',
                    style: GoogleFonts.rochester(
                        fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                )),
            Positioned(
                bottom: 120.0,
                child: Padding(
                  padding: EdgeInsets.only(left: 15.0),
                  child: Text(
                    'UNITS FOR ORDER',
                    style: GoogleFonts.robotoCondensed(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown[500]),
                  ),
                )),
            Positioned(
              bottom: 110.0,
              left: 200.0,
              child: Row(
                children: [
                  Container(
                    width: 50.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: Colors.brown,
                    ),
                    child: IconButton(
                      onPressed: () {
                        //increment var
                        setState(() {
                          quantityForOrder++;
                          if (priceManipulation == 0) {
                            priceManipulation = widget.price;
                          } else {
                            priceManipulation += widget.price;
                          }
                        });
                      },
                      icon: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 8.0,
                  ),
                  Container(
                    width: 65.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: Colors.brown[200],
                    ),
                    child: Center(
                      child: Text(
                        '${quantityForOrder.toString()}',
                        style: TextStyle(color: Colors.black, fontSize: 17.0),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 8.0,
                  ),
                  Container(
                    width: 50.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: Colors.brown,
                    ),
                    child: IconButton(
                      onPressed: () {
                        setState(() {
                          quantityForOrder--;
                          if (quantityForOrder <= 0) {
                            quantityForOrder = 0;
                            priceManipulation = widget.price;
                          }
                          priceManipulation -= widget.price;
                        });
                      },
                      icon: Icon(
                        Icons.remove,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 50.0,
              child: Padding(
                padding: EdgeInsets.only(left: 13.0),
                child: Container(
                  width: 100.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: Colors.white,
                      border: Border.all(color: brownModified, width: 4)),
                  child: Center(
                    child: Text(
                      '$priceManipulation\$',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 17.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 50.0,
              left: 200.0,
              child: Container(
                height: 50.0,
                width: 180.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.brown),
                child: TextButton(
                  onPressed: null,
                  child: Text(
                    'ADD TO CART',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Positioned(
                top: 50.0,
                child: IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MainScreen()));
                    setState(() {
                      priceManipulation = 0;
                      quantityForOrder = 0;
                    });
                  },
                  icon: Icon(
                    Icons.arrow_back_ios_new_rounded,
                    color: Colors.black,
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
