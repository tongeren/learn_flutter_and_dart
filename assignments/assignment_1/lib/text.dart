import 'package:flutter/material.dart' as flutter;

class Text extends flutter.StatelessWidget {
  final String text;

  Text([this.text = '']) {
    print('[Text Widget] Constructor');
  }

  @override
  flutter.Widget build(flutter.BuildContext context) {
    print('[Text Widget] Constructor');
    return flutter.Text(text);
  }
}