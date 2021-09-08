import 'package:flutter/material.dart';
import 'package:weather_info/screen/top_screen.dart';
import 'package:weather_info/screen/bottom_screen.dart';

class AppScreen extends StatelessWidget {
  final weatherData;
  AppScreen({this.weatherData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF212121),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Flexible(
              child: TopScreen(
                temp: weatherData['main']['temp'],
                condition: weatherData['weather'][0]['id'],
              ),
            ),
            Flexible(
              child: BottomScreen(
                city: weatherData['name'],
                temp: weatherData['main']['temp'],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
