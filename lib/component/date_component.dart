import 'package:flutter/material.dart';
import 'package:weather_info/constant.dart';
import 'package:weather_info/model/date.dart';

class DateComponent extends StatefulWidget {
  @override
  _DateComponentState createState() => _DateComponentState();
}

class _DateComponentState extends State<DateComponent> {
  Date date = Date();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          date.getDayName().toUpperCase(),
          style: kTextGrey,
        ),
        Container(
          height: 10.0,
          child: kDevider,
        ),
        Text(
          date.getMonth().toUpperCase(),
          style: kTextGrey,
        ),
        Container(
          height: 10.0,
          child: kDevider,
        ),
        Text(
          date.getTime(),
          style: kTextGrey,
        ),
      ],
    );
  }
}
