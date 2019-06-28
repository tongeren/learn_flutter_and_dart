import 'package:flutter/material.dart';

class ProductCreatePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ProductCreatePageState();
  }
}

class _ProductCreatePageState extends State<ProductCreatePage> {
  String titleValue = '';
  String description = '';
  double price = 0.0;

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      TextField(onChanged: (String value) {
         setState(() {
           titleValue = value;
         });
      }),
      Text(titleValue),
      TextField(
        keyboardType: TextInputType.multiline,
        maxLines: null, 
        onChanged: (String value) {
         setState(() {
           description = value;
         });
      }),
      Text(description),
      TextField(
        keyboardType: TextInputType.numberWithOptions(),
        onChanged: (String value) {
         setState(() {
           price = double.parse(value);
         });
      }),
      Text(price.toStringAsFixed(2)),
    ],);
  }
}