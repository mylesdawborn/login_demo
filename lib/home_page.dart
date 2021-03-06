import 'package:flutter/material.dart';
import 'auth.dart';

class HomePage extends StatelessWidget {
  HomePage({this.auth, this.onSignedOut});

  final BaseAuth auth;
  final VoidCallback onSignedOut;

  void _signOut() async {
    try {
      await auth.signOut();
      onSignedOut();
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Welcome',
            style: TextStyle(color: Colors.white),
          ),
          actions: <Widget>[
            FlatButton(
                onPressed: _signOut,
                child: Text('Logout',
                    style: TextStyle(fontSize: 17.0, color: Colors.white)))
          ],
        ),
        body: Container(
          child: Center(
            child: Text(
              'Welcome',
              style: TextStyle(fontSize: 32.0),
            ),
          ),
        ));
  }
}
