import 'package:flutter/material.dart';
import 'package:weather_info/component/radio_list_button.dart';
import 'package:weather_info/screen/top_screen.dart';

class TempChoose extends StatefulWidget {
  @override
  _TempChooseState createState() => _TempChooseState();
}

class _TempChooseState extends State<TempChoose> {
  late String? selectedRadioTile;

  @override
  void initState() {
    super.initState();
    selectedRadioTile = 'metric';
  }

  void getValue(String? val) {
    setState(
      () {
        TopScreen.of(context)!.string = val!;
        selectedRadioTile = val;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      children: [
        RadioListButton(
          title: 'CELCIUS',
          value: 'metric',
          selectedRadioTile: selectedRadioTile,
          onChanged: getValue,
        ),
        RadioListButton(
          title: 'FAHREINHEIT',
          value: 'imperial',
          selectedRadioTile: selectedRadioTile,
          onChanged: getValue,
        ),
        RadioListButton(
          title: 'KELVIN',
          value: 'default',
          selectedRadioTile: selectedRadioTile,
          onChanged: getValue,
        ),
      ],
    );
  }
}
