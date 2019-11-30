import 'package:flutter/material.dart';

class CreatePlant extends StatelessWidget {
  final int index;

  CreatePlant(this.index);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(12),
      child: Text(
        "Create plant",
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
