import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  final int index;

  Settings(this.index);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(12),
      child: Text(
        "Settings page",
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
