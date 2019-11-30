import 'package:flutter/material.dart';

import './Elements/item.dart';

class Garden extends StatelessWidget {
  final int index;

  Garden(this.index);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ItemList(),
    );
  }
}
