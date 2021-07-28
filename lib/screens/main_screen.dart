import 'package:clone_ui_1/functions/functions_file.dart';
import 'package:clone_ui_1/functions/vars.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Positioned(
              right: -10.0,
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: 100.0,
                color: Color.fromRGBO(160, 82, 45, 0.2),
              ),
            ),
            Positioned(
              top: 115.0,
              child: Padding(
                padding: EdgeInsets.only(left: 17.0),
                child: Text('CoffeHouse',
                    style: GoogleFonts.robotoCondensed(
                      fontSize: 35.0,
                      fontWeight: FontWeight.w700,
                    )),
              ),
            ),
            Positioned(
              top: 148.0,
              child: Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Text('Your goto place for the world\'s best coffe.',
                    style: GoogleFonts.rochester(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w400,
                    )),
              ),
            ),
            Positioned(
              top: 190.0,
              left: 0.0,
              child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      brownModified,
                      colorPinkModified,
                    ]),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10.0),
                        bottomRight: Radius.circular(10.0))),
                width: 80.0,
                height: 50.0,
                child: Padding(
                  padding: EdgeInsets.only(left: 40.0),
                  child: IconButton(
                    color: Colors.white,
                    icon: Icon(Icons.search_outlined),
                    onPressed: null,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 190.0,
              child: Padding(
                padding: EdgeInsets.only(left: 100.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * 1.2,
                  height: 50.0,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search for products',
                      hintStyle: GoogleFonts.rochester(
                        fontSize: 20.0,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      fillColor: Colors.white70,
                      filled: true,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 255.0,
              child: Padding(
                padding: EdgeInsets.only(left: 25.0),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 45.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      listContainer(colorPinkModified, brownModified, 'RITA',
                          Colors.white.withOpacity(0.8)),
                      SizedBox(width: 10.0),
                      listContainer(colorPinkModified, brownModified,
                          'COLD BREW', Colors.white.withOpacity(0.8)),
                      SizedBox(width: 10.0),
                      listContainer(colorPinkModified, brownModified, 'NESCAFE',
                          Colors.white.withOpacity(0.8)),
                      SizedBox(width: 10.0),
                      listContainer(colorPinkModified, brownModified,
                          'ESSPRESO', Colors.white.withOpacity(0.8)),
                      SizedBox(width: 10.0),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 355.0,
              child: Padding(
                padding: EdgeInsets.only(left: 25.0),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 400.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      stackItem(
                          'assets/caffe_cup5.png', 'ESPRESSO', '150ml', 25.0),
                      SizedBox(
                        width: 50.0,
                      ),
                      stackItem(
                          'assets/caffe_cup7.png', '   LATTE', '330ml', 35.55),
                      SizedBox(
                        width: 50.0,
                      ),
                      stackItem(
                          'assets/caffe_cup8.png', 'CAPPUCINO', '250ml', 27.99),
                      SizedBox(
                        width: 50.0,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
