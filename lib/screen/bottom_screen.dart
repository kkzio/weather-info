import 'package:flutter/material.dart';
import 'package:weather_info/component/city_component.dart';
import 'package:weather_info/component/user_sugesstion_component.dart';
import 'package:weather_info/component/date_component.dart';

class BottomScreen extends StatelessWidget {
  BottomScreen({required this.city, required this.temp});

  final String city;
  final double temp;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0XFFFAFAFA),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 15.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Flexible(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CityComponent(
                    nameCity: city,
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  DateComponent(),
                ],
              ),
            ),
            Flexible(
              child: UserSugesstionComponent(
                currentTemp: temp,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
