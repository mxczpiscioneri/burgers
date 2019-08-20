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
        primaryColor: Color(0xFF0083ca),
        accentColor: Color(0xFFffce00),
        textTheme: TextTheme(
          headline: TextStyle(fontSize: 72, fontWeight: FontWeight.bold),
          title: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          body1: TextStyle(fontSize: 14),
          button: TextStyle(fontSize: 16),
        ),
        buttonTheme: ButtonThemeData(
          buttonColor: Color(0xFF5295cc),
          textTheme: ButtonTextTheme.normal,
        )
      ),
      home: HomePage(),
    );
  }
}
