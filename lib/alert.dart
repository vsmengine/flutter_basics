import 'package:flutter/material.dart';

class Alert extends StatelessWidget {
  final int scoreOutput;
  Alert(this.scoreOutput);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('You are Done!' + scoreOutput.toString()),
    );
  }
}