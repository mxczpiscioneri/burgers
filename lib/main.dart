import 'package:flutter/material.dart';
import 'package:burgers/pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Burgers',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Color(0xFF303030),
        accentColor: Color(0xFFffce00),
        textTheme: TextTheme(
          body1: TextStyle(fontSize: 16),
        ),
      ),
      home: HomePage(),
    );
  }
}
