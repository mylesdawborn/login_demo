import 'package:flutter/material.dart';
import 'auth.dart';
import 'root_page.dart';


void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Login Page",
      theme: ThemeData(
        primaryColor: Color(0xFF00ADFF),
      ),
      home: RootPage(auth: Auth(),),
    );
  }
}
