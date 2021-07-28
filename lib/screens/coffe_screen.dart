import 'package:clone_ui_1/functions/functions_file.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
        child: coffeScreenGenerator(
          widget.name,
          widget.imgPath,
          widget.description,
          widget.price,
          widget.quantity,
          context,
        ),
      ),
    );
  }
}
