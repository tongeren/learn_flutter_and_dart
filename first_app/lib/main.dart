import 'package:first_app/pages/product_admin.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';

import './pages/auth.dart';
import './pages/product_admin.dart';
import './pages/products.dart';

void main() {
  // debugPaintSizeEnabled = true;
  // debugPaintBaselinesEnabled = true;
  // debugPaintPointersEnabled = true;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // debugShowMaterialGrid: true,
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.deepOrange,
        accentColor: Colors.deepPurple,
      ),
      // home: AuthPage(),
      routes: {
        '/': (BuildContext context) => ProductsPage(),
        '/admin': (BuildContext context) => ProductAdminPage(),
      },
    );
  }
}
