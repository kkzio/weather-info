import 'package:flutter/material.dart';
import 'package:weather_info/constant.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:weather_info/model/wather_data.dart';

class UserSugesstionComponent extends StatelessWidget {
  UserSugesstionComponent({required this.currentTemp});

  final double currentTemp;

  @override
  Widget build(BuildContext context) {
    final int temp = currentTemp.round();
    final List weatherData = WeatherData().getMessage(temp);

    return Column(
      children: [
        Text(
          weatherData[0].toUpperCase(),
          textAlign: TextAlign.center,
          style: kTextBottomIcon,
        ),
        Flexible(
          child: FaIcon(
            weatherData[1],
            size: 88.0,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
