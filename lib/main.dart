import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:reseller/screens/home_screen.dart';



void main() => runApp(new WeatherApp());

class WeatherApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return new MaterialApp(
      title: 'Reseller',
      home: new HomeScreen(),
      theme: new ThemeData(
        primarySwatch: Colors.blueGrey,
        accentColor: Colors.grey,
      ),
    );
  }
}
