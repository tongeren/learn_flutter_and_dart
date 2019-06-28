import 'package:flutter/material.dart';

class ProductCreatePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ProductCreatePageState();
  }
}

class _ProductCreatePageState extends State<ProductCreatePage> {
  String titleValue = '';
  String descriptionValue = '';
  double priceValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: Column(
        children: <Widget>[
          TextField(
              decoration: InputDecoration(labelText: 'Product Title'),
              onChanged: (String value) {
                setState(() {
                  titleValue = value;
                });
              }),
          TextField(
              decoration: InputDecoration(labelText: 'Product Description'),
              keyboardType: TextInputType.multiline,
              maxLines: 4,
              onChanged: (String value) {
                setState(() {
                  descriptionValue = value;
                });
              }),
          TextField(
              decoration: InputDecoration(labelText: 'Product Price'),
              keyboardType: TextInputType.numberWithOptions(),
              onChanged: (String value) {
                setState(() {
                  priceValue = double.parse(value);
                });
              }),
        ],
      ),
    );
  }
}
