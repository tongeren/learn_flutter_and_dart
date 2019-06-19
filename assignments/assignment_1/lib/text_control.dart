import 'package:flutter/material.dart';

import './text.dart' as Text;

class TextControl extends StatefulWidget {
  final String initialText;

  TextControl({ this.initialText = 'Duncan' }) {
    print('[TextControl Widget] Constructor');
  }

  @override
  State<StatefulWidget> createState() {
    print('[TextControl Widget] createState()');
    return _TextControlState();
  }
}

class _TextControlState extends State<TextControl> {
  String initialText = '';

  @override
  void initState() {
    print('[TextControl State] createState()');
    super.initState();
    initialText = widget.initialText;
  }

  @override
  Widget build(BuildContext context) {
    print('[TextControl State] build()'); 
    return Center(child:
      Column(children: [
        Container(
          margin: EdgeInsets.all(10.0),
          child: Text.Text(initialText)
        ),
        Container(
          margin: EdgeInsets.all(10.0),
          child: RaisedButton(
            onPressed: () {
              setState(() {
                initialText = 'Wiphatthra';
              });
            },
            child: Text.Text('Change name'),
          ),
        ), 
      ]),
    );
  }
}
