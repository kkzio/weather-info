import 'package:flutter/material.dart';
import 'package:weather_info/screen/loading_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather Info',
      theme: ThemeData(fontFamily: 'Righteous'),
      home: Scaffold(
        backgroundColor: Color(0xFF212121),
        body: LoadingScreen(),
      ),
    );
  }
}
