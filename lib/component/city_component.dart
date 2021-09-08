import 'package:flutter/material.dart';

class CityComponent extends StatelessWidget {
  final String nameCity;
  CityComponent({required this.nameCity});

  @override
  Widget build(BuildContext context) {
    return Text(
      nameCity.toUpperCase(),
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 32.0,
        color: Colors.black,
      ),
    );
  }
}
