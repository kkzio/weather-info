import 'package:flutter/material.dart';

class RadioListButton extends StatelessWidget {
  const RadioListButton({
    required this.title,
    required this.selectedRadioTile,
    required this.onChanged,
    required this.value,
  });

  final String? selectedRadioTile;
  final Function(String?) onChanged;
  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Theme(
        data: ThemeData(unselectedWidgetColor: Colors.white),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Radio(
              value: value,
              groupValue: selectedRadioTile,
              onChanged: onChanged,
              activeColor: Colors.white,
            ),
            Text(
              title,
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
