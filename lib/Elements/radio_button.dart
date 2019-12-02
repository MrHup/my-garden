import 'package:flutter/material.dart';

class RadioButton extends StatefulWidget {
  @override
  RadioButtonState createState() {
    return new RadioButtonState();
  }
}

class RadioButtonState extends State<RadioButton> {
  int _currValue = 1;

  @override
  Widget build(BuildContext context) {
    return  
      Center(
        child: Radio(
          groupValue: _currValue,
          onChanged: (int i) => setState(() => _currValue = i),
          value: 1,
        ),
      );
  
  }
}