import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:weather_info/component/icon_component.dart';
import 'package:weather_info/component/temp_choose.dart';
import 'package:weather_info/model/wather_data.dart';

class TopScreen extends StatefulWidget {
  TopScreen({required this.temp, required this.condition});

  final double temp;
  final int condition;

  @override
  _TopScreenState createState() => _TopScreenState();

  static _TopScreenState? of(BuildContext context) =>
      context.findAncestorStateOfType<_TopScreenState>();
}

class _TopScreenState extends State<TopScreen> {
  final WeatherData weatherData = WeatherData();
  final DateTime dateTime = DateTime.now();

  String _selectedTemp = 'metric';
  set string(String value) => setState(() => {_selectedTemp = value});

  Widget iconTime() {
    int hour = dateTime.hour;
    if (hour > 5 && hour < 19) {
      return IconComponent(
        FontAwesomeIcons.solidSun,
        48.0,
        Colors.white,
      );
    } else {
      return IconComponent(
        FontAwesomeIcons.solidMoon,
        48.0,
        Colors.white,
      );
    }
  }

  late double temp;
  double checkSelectedTemp() {
    if (_selectedTemp == 'metric') {
      return temp = widget.temp;
    } else if (_selectedTemp == 'imperial') {
      temp = (temp * (9 / 5)) + 32;
      return temp;
    } else {
      temp = temp + 273.15;
      return temp;
    }
  }

  @override
  void initState() {
    super.initState();
    checkSelectedTemp();
  }

  @override
  Widget build(BuildContext context) {
    checkSelectedTemp();
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 15.0,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                iconTime(),
                IconComponent(
                  weatherData.getWeatherIcon(widget.condition),
                  48.0,
                  Colors.white,
                ),
              ],
            ),
          ),
          Expanded(
            child: Text(
              '${temp.toStringAsFixed(0)}°',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 72.0,
              ),
            ),
          ),
          Expanded(child: TempChoose()),
        ],
      ),
    );
  }
}
