import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CoffeScreen extends StatefulWidget {
  final String imgPath;
  final String description;
  final double price;
  final String quantity;
  const CoffeScreen(
      {Key? key,
      required this.imgPath,
      required this.description,
      required this.price,
      required this.quantity})
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
      ),
    );
  }
}
