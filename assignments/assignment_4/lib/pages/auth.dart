import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AuthPageState();
  }
}

class _AuthPageState extends State<AuthPage> {
  String emailAddressValue = '';
  String passwordValue = '';

  _showDataDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Authentication Data'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('Email Address: $emailAddressValue'),
                Text('Password: $passwordValue'),
              ],
            ),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('CONTINUE'),
              onPressed: () {
                Navigator.pop(context); // dispose of the dialog
                Navigator.pushReplacementNamed(context, '/products');
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            TextField(
                decoration: InputDecoration(labelText: 'Email Address'),
                keyboardType: TextInputType.emailAddress,
                onChanged: (String value) {
                  setState(() {
                    emailAddressValue = value;
                  });
                }),
            TextField(
                obscureText: true,
                decoration: InputDecoration(labelText: 'Password'),
                onChanged: (String value) {
                  setState(() {
                    passwordValue = value;
                  });
                }),
            SizedBox(height: 10.0),
            RaisedButton(
              child: Text('LOGIN'),
              onPressed: () {
                _showDataDialog(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
