import 'package:flutter/material.dart';

class NaveBarItem extends StatelessWidget {
  final String title;
  const NaveBarItem(this.title);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(fontSize: 18),
    );
  }
}