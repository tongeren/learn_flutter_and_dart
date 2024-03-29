import 'package:flutter/material.dart';

import '../admin.dart';
import './products.dart';

class ProductAdminPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: <Widget>[ 
            AppBar(
              automaticallyImplyLeading: false,
              title: Text('Choose'),),
            ListTile(
              title: Text('Products'),
              onTap: () {
                Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (BuildContext context) => ProductsPage()),
                );
              },
            ),
          ],
        ),
      ),    
      appBar: AppBar(
        title: Text('Manage Products'),
      ),
      body: Admin(),
    );
  }
}

